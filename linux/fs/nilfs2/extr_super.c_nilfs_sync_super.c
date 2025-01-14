
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_last_segment_lock; scalar_t__ ns_prot_seq; struct nilfs_super_block** ns_sbp; scalar_t__* ns_sbh; int ns_sbwcount; int ns_sbsize; } ;
struct super_block {struct the_nilfs* s_fs_info; } ;
struct nilfs_super_block {int s_last_seq; int s_last_cno; } ;


 int BARRIER ;
 int EIO ;
 int KERN_ERR ;
 int NILFS_SB_COMMIT_ALL ;
 int REQ_FUA ;
 int REQ_PREFLUSH ;
 int REQ_SYNC ;
 int __sync_dirty_buffer (scalar_t__,int) ;
 int clear_nilfs_discontinued (struct the_nilfs*) ;
 scalar_t__ le64_to_cpu (int ) ;
 int memcpy (struct nilfs_super_block*,struct nilfs_super_block*,int ) ;
 int nilfs_fall_back_super_block (struct the_nilfs*) ;
 int nilfs_msg (struct super_block*,int ,char*,int) ;
 scalar_t__ nilfs_test_opt (struct the_nilfs*,int ) ;
 int set_buffer_dirty (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ sync_dirty_buffer (scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nilfs_sync_super(struct super_block *sb, int flag)
{
 struct the_nilfs *nilfs = sb->s_fs_info;
 int err;

 retry:
 set_buffer_dirty(nilfs->ns_sbh[0]);
 if (nilfs_test_opt(nilfs, BARRIER)) {
  err = __sync_dirty_buffer(nilfs->ns_sbh[0],
       REQ_SYNC | REQ_PREFLUSH | REQ_FUA);
 } else {
  err = sync_dirty_buffer(nilfs->ns_sbh[0]);
 }

 if (unlikely(err)) {
  nilfs_msg(sb, KERN_ERR, "unable to write superblock: err=%d",
     err);
  if (err == -EIO && nilfs->ns_sbh[1]) {




   memcpy(nilfs->ns_sbp[1], nilfs->ns_sbp[0],
          nilfs->ns_sbsize);
   nilfs_fall_back_super_block(nilfs);
   goto retry;
  }
 } else {
  struct nilfs_super_block *sbp = nilfs->ns_sbp[0];

  nilfs->ns_sbwcount++;





  clear_nilfs_discontinued(nilfs);


  if (nilfs->ns_sbh[1]) {
   if (flag == NILFS_SB_COMMIT_ALL) {
    set_buffer_dirty(nilfs->ns_sbh[1]);
    if (sync_dirty_buffer(nilfs->ns_sbh[1]) < 0)
     goto out;
   }
   if (le64_to_cpu(nilfs->ns_sbp[1]->s_last_cno) <
       le64_to_cpu(nilfs->ns_sbp[0]->s_last_cno))
    sbp = nilfs->ns_sbp[1];
  }

  spin_lock(&nilfs->ns_last_segment_lock);
  nilfs->ns_prot_seq = le64_to_cpu(sbp->s_last_seq);
  spin_unlock(&nilfs->ns_last_segment_lock);
 }
 out:
 return err;
}
