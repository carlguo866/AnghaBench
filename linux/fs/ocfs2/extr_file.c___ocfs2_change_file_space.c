
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct ocfs2_super {int dummy; } ;
struct ocfs2_space_resv {int l_whence; scalar_t__ l_start; scalar_t__ l_len; } ;
struct inode {int i_flags; int i_mtime; int i_ctime; TYPE_7__* i_sb; } ;
struct TYPE_10__ {int dentry; } ;
struct file {int f_flags; TYPE_1__ f_path; } ;
struct buffer_head {int dummy; } ;
typedef unsigned long long s64 ;
typedef scalar_t__ loff_t ;
struct TYPE_11__ {int h_sync; } ;
typedef TYPE_2__ handle_t ;
struct TYPE_13__ {int ip_alloc_sem; } ;
struct TYPE_12__ {unsigned long long s_maxbytes; } ;


 int EINVAL ;
 int EPERM ;
 int EROFS ;
 scalar_t__ IS_ERR (TYPE_2__*) ;
 TYPE_8__* OCFS2_I (struct inode*) ;
 int OCFS2_INODE_UPDATE_CREDITS ;




 struct ocfs2_super* OCFS2_SB (TYPE_7__*) ;
 int O_SYNC ;
 int PTR_ERR (TYPE_2__*) ;
 int S_APPEND ;
 int S_IMMUTABLE ;
 int __ocfs2_write_remove_suid (struct inode*,struct buffer_head*) ;
 int brelse (struct buffer_head*) ;
 int current_time (struct inode*) ;
 int down_write (int *) ;
 scalar_t__ i_size_read (struct inode*) ;
 int i_size_write (struct inode*,scalar_t__) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int mlog_errno (int) ;
 int ocfs2_allocate_unwritten_extents (struct inode*,unsigned long long,scalar_t__) ;
 int ocfs2_commit_trans (struct ocfs2_super*,TYPE_2__*) ;
 int ocfs2_inode_lock (struct inode*,struct buffer_head**,int) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 scalar_t__ ocfs2_is_hard_readonly (struct ocfs2_super*) ;
 scalar_t__ ocfs2_is_soft_readonly (struct ocfs2_super*) ;
 int ocfs2_mark_inode_dirty (TYPE_2__*,struct inode*,struct buffer_head*) ;
 int ocfs2_remove_inode_range (struct inode*,struct buffer_head*,unsigned long long,scalar_t__) ;
 int ocfs2_rw_lock (struct inode*,int) ;
 int ocfs2_rw_unlock (struct inode*,int) ;
 TYPE_2__* ocfs2_start_trans (struct ocfs2_super*,int ) ;
 scalar_t__ should_remove_suid (int ) ;
 int up_write (int *) ;

__attribute__((used)) static int __ocfs2_change_file_space(struct file *file, struct inode *inode,
         loff_t f_pos, unsigned int cmd,
         struct ocfs2_space_resv *sr,
         int change_size)
{
 int ret;
 s64 llen;
 loff_t size;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 struct buffer_head *di_bh = ((void*)0);
 handle_t *handle;
 unsigned long long max_off = inode->i_sb->s_maxbytes;

 if (ocfs2_is_hard_readonly(osb) || ocfs2_is_soft_readonly(osb))
  return -EROFS;

 inode_lock(inode);




 ret = ocfs2_rw_lock(inode, 1);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_inode_lock(inode, &di_bh, 1);
 if (ret) {
  mlog_errno(ret);
  goto out_rw_unlock;
 }

 if (inode->i_flags & (S_IMMUTABLE|S_APPEND)) {
  ret = -EPERM;
  goto out_inode_unlock;
 }

 switch (sr->l_whence) {
 case 0:
  break;
 case 1:
  sr->l_start += f_pos;
  break;
 case 2:
  sr->l_start += i_size_read(inode);
  break;
 default:
  ret = -EINVAL;
  goto out_inode_unlock;
 }
 sr->l_whence = 0;

 llen = sr->l_len > 0 ? sr->l_len - 1 : sr->l_len;

 if (sr->l_start < 0
     || sr->l_start > max_off
     || (sr->l_start + llen) < 0
     || (sr->l_start + llen) > max_off) {
  ret = -EINVAL;
  goto out_inode_unlock;
 }
 size = sr->l_start + sr->l_len;

 if (cmd == 131 || cmd == 130 ||
     cmd == 129 || cmd == 128) {
  if (sr->l_len <= 0) {
   ret = -EINVAL;
   goto out_inode_unlock;
  }
 }

 if (file && should_remove_suid(file->f_path.dentry)) {
  ret = __ocfs2_write_remove_suid(inode, di_bh);
  if (ret) {
   mlog_errno(ret);
   goto out_inode_unlock;
  }
 }

 down_write(&OCFS2_I(inode)->ip_alloc_sem);
 switch (cmd) {
 case 131:
 case 130:




  ret = ocfs2_allocate_unwritten_extents(inode, sr->l_start,
             sr->l_len);
  break;
 case 129:
 case 128:
  ret = ocfs2_remove_inode_range(inode, di_bh, sr->l_start,
            sr->l_len);
  break;
 default:
  ret = -EINVAL;
 }
 up_write(&OCFS2_I(inode)->ip_alloc_sem);
 if (ret) {
  mlog_errno(ret);
  goto out_inode_unlock;
 }




 handle = ocfs2_start_trans(osb, OCFS2_INODE_UPDATE_CREDITS);
 if (IS_ERR(handle)) {
  ret = PTR_ERR(handle);
  mlog_errno(ret);
  goto out_inode_unlock;
 }

 if (change_size && i_size_read(inode) < size)
  i_size_write(inode, size);

 inode->i_ctime = inode->i_mtime = current_time(inode);
 ret = ocfs2_mark_inode_dirty(handle, inode, di_bh);
 if (ret < 0)
  mlog_errno(ret);

 if (file && (file->f_flags & O_SYNC))
  handle->h_sync = 1;

 ocfs2_commit_trans(osb, handle);

out_inode_unlock:
 brelse(di_bh);
 ocfs2_inode_unlock(inode, 1);
out_rw_unlock:
 ocfs2_rw_unlock(inode, 1);

out:
 inode_unlock(inode);
 return ret;
}
