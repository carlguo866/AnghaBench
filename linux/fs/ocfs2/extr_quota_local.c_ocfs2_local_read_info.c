
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ocfs2_quota_recovery {int * r_list; } ;
struct ocfs2_mem_dqinfo {int dqi_type; int dqi_flags; int dqi_chunk; struct buffer_head* dqi_lqi_bh; int dqi_gqlock; int dqi_gqinode; struct buffer_head* dqi_libh; void* dqi_blocks; void* dqi_chunks; int * dqi_rec; } ;
struct ocfs2_local_disk_dqinfo {int dqi_blocks; int dqi_chunks; int dqi_flags; } ;
struct mem_dqinfo {int dqi_max_spc_limit; int dqi_max_ino_limit; struct ocfs2_mem_dqinfo* dqi_priv; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_5__ {struct ocfs2_quota_recovery* quota_rec; } ;
struct TYPE_4__ {struct inode** files; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 int ML_ERROR ;
 scalar_t__ OCFS2_LOCAL_INFO_OFF ;
 TYPE_2__* OCFS2_SB (struct super_block*) ;
 int OLQF_CLEAN ;
 int brelse (struct buffer_head*) ;
 int iput (int ) ;
 int kfree (struct ocfs2_mem_dqinfo*) ;
 struct ocfs2_mem_dqinfo* kmalloc (int,int ) ;
 void* le32_to_cpu (int ) ;
 int mlog (int ,char*,...) ;
 int mlog_errno (int) ;
 struct ocfs2_quota_recovery* ocfs2_alloc_quota_recovery () ;
 int ocfs2_global_read_info (struct super_block*,int) ;
 int ocfs2_inode_lock (struct inode*,struct buffer_head**,int) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 int ocfs2_load_local_quota_bitmaps (struct inode*,struct ocfs2_local_disk_dqinfo*,int *) ;
 int ocfs2_lock_res_free (int *) ;
 int ocfs2_modify_bh (struct inode*,struct buffer_head*,int ,struct mem_dqinfo*) ;
 int ocfs2_read_quota_block (struct inode*,int ,struct buffer_head**) ;
 int ocfs2_recovery_load_quota (struct inode*,struct ocfs2_local_disk_dqinfo*,int,int *) ;
 int ocfs2_release_local_quota_bitmaps (int *) ;
 int ocfs2_simple_drop_lockres (TYPE_2__*,int *) ;
 int olq_update_info ;
 struct mem_dqinfo* sb_dqinfo (struct super_block*,int) ;
 TYPE_1__* sb_dqopt (struct super_block*) ;

__attribute__((used)) static int ocfs2_local_read_info(struct super_block *sb, int type)
{
 struct ocfs2_local_disk_dqinfo *ldinfo;
 struct mem_dqinfo *info = sb_dqinfo(sb, type);
 struct ocfs2_mem_dqinfo *oinfo;
 struct inode *lqinode = sb_dqopt(sb)->files[type];
 int status;
 struct buffer_head *bh = ((void*)0);
 struct ocfs2_quota_recovery *rec;
 int locked = 0;

 info->dqi_max_spc_limit = 0x7fffffffffffffffLL;
 info->dqi_max_ino_limit = 0x7fffffffffffffffLL;
 oinfo = kmalloc(sizeof(struct ocfs2_mem_dqinfo), GFP_NOFS);
 if (!oinfo) {
  mlog(ML_ERROR, "failed to allocate memory for ocfs2 quota"
          " info.");
  goto out_err;
 }
 info->dqi_priv = oinfo;
 oinfo->dqi_type = type;
 INIT_LIST_HEAD(&oinfo->dqi_chunk);
 oinfo->dqi_rec = ((void*)0);
 oinfo->dqi_lqi_bh = ((void*)0);
 oinfo->dqi_libh = ((void*)0);

 status = ocfs2_global_read_info(sb, type);
 if (status < 0)
  goto out_err;

 status = ocfs2_inode_lock(lqinode, &oinfo->dqi_lqi_bh, 1);
 if (status < 0) {
  mlog_errno(status);
  goto out_err;
 }
 locked = 1;


 status = ocfs2_read_quota_block(lqinode, 0, &bh);
 if (status) {
  mlog_errno(status);
  mlog(ML_ERROR, "failed to read quota file info header "
   "(type=%d)\n", type);
  goto out_err;
 }
 ldinfo = (struct ocfs2_local_disk_dqinfo *)(bh->b_data +
      OCFS2_LOCAL_INFO_OFF);
 oinfo->dqi_flags = le32_to_cpu(ldinfo->dqi_flags);
 oinfo->dqi_chunks = le32_to_cpu(ldinfo->dqi_chunks);
 oinfo->dqi_blocks = le32_to_cpu(ldinfo->dqi_blocks);
 oinfo->dqi_libh = bh;


 if (!(oinfo->dqi_flags & OLQF_CLEAN)) {
  rec = OCFS2_SB(sb)->quota_rec;
  if (!rec) {
   rec = ocfs2_alloc_quota_recovery();
   if (!rec) {
    status = -ENOMEM;
    mlog_errno(status);
    goto out_err;
   }
   OCFS2_SB(sb)->quota_rec = rec;
  }

  status = ocfs2_recovery_load_quota(lqinode, ldinfo, type,
                                                   &rec->r_list[type]);
  if (status < 0) {
   mlog_errno(status);
   goto out_err;
  }
 }

 status = ocfs2_load_local_quota_bitmaps(lqinode,
      ldinfo,
      &oinfo->dqi_chunk);
 if (status < 0) {
  mlog_errno(status);
  goto out_err;
 }


 oinfo->dqi_flags &= ~OLQF_CLEAN;
 status = ocfs2_modify_bh(lqinode, bh, olq_update_info, info);
 if (status < 0) {
  mlog_errno(status);
  goto out_err;
 }

 return 0;
out_err:
 if (oinfo) {
  iput(oinfo->dqi_gqinode);
  ocfs2_simple_drop_lockres(OCFS2_SB(sb), &oinfo->dqi_gqlock);
  ocfs2_lock_res_free(&oinfo->dqi_gqlock);
  brelse(oinfo->dqi_lqi_bh);
  if (locked)
   ocfs2_inode_unlock(lqinode, 1);
  ocfs2_release_local_quota_bitmaps(&oinfo->dqi_chunk);
  kfree(oinfo);
 }
 brelse(bh);
 return -1;
}
