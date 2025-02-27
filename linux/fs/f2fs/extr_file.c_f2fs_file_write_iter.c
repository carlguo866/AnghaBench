
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {int ki_flags; size_t ki_pos; struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
typedef int ssize_t ;


 int APP_WRITE_IO ;
 int EAGAIN ;
 int EIO ;
 int F2FS_I_SB (struct inode*) ;
 int FI_NO_PREALLOC ;
 int IOCB_NOWAIT ;
 int __generic_file_write_iter (struct kiocb*,struct iov_iter*) ;
 int clear_inode_flag (struct inode*,int ) ;
 int f2fs_cp_error (int ) ;
 scalar_t__ f2fs_force_buffered_io (struct inode*,struct kiocb*,struct iov_iter*) ;
 scalar_t__ f2fs_has_inline_data (struct inode*) ;
 int f2fs_overwrite_io (struct inode*,size_t,size_t) ;
 int f2fs_preallocate_blocks (struct kiocb*,struct iov_iter*) ;
 int f2fs_truncate (struct inode*) ;
 int f2fs_update_iostat (int ,int ,int) ;
 struct inode* file_inode (struct file*) ;
 int generic_write_checks (struct kiocb*,struct iov_iter*) ;
 int generic_write_sync (struct kiocb*,int) ;
 size_t i_size_read (struct inode*) ;
 int inode_lock (struct inode*) ;
 int inode_trylock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 size_t iov_iter_count (struct iov_iter*) ;
 scalar_t__ iov_iter_fault_in_readable (struct iov_iter*,size_t) ;
 int set_inode_flag (struct inode*,int ) ;
 int trace_f2fs_file_write_iter (struct inode*,size_t,size_t,int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static ssize_t f2fs_file_write_iter(struct kiocb *iocb, struct iov_iter *from)
{
 struct file *file = iocb->ki_filp;
 struct inode *inode = file_inode(file);
 ssize_t ret;

 if (unlikely(f2fs_cp_error(F2FS_I_SB(inode)))) {
  ret = -EIO;
  goto out;
 }

 if (iocb->ki_flags & IOCB_NOWAIT) {
  if (!inode_trylock(inode)) {
   ret = -EAGAIN;
   goto out;
  }
 } else {
  inode_lock(inode);
 }

 ret = generic_write_checks(iocb, from);
 if (ret > 0) {
  bool preallocated = 0;
  size_t target_size = 0;
  int err;

  if (iov_iter_fault_in_readable(from, iov_iter_count(from)))
   set_inode_flag(inode, FI_NO_PREALLOC);

  if ((iocb->ki_flags & IOCB_NOWAIT)) {
   if (!f2fs_overwrite_io(inode, iocb->ki_pos,
      iov_iter_count(from)) ||
    f2fs_has_inline_data(inode) ||
    f2fs_force_buffered_io(inode, iocb, from)) {
    clear_inode_flag(inode, FI_NO_PREALLOC);
    inode_unlock(inode);
    ret = -EAGAIN;
    goto out;
   }
  } else {
   preallocated = 1;
   target_size = iocb->ki_pos + iov_iter_count(from);

   err = f2fs_preallocate_blocks(iocb, from);
   if (err) {
    clear_inode_flag(inode, FI_NO_PREALLOC);
    inode_unlock(inode);
    ret = err;
    goto out;
   }
  }
  ret = __generic_file_write_iter(iocb, from);
  clear_inode_flag(inode, FI_NO_PREALLOC);


  if (preallocated && i_size_read(inode) < target_size)
   f2fs_truncate(inode);

  if (ret > 0)
   f2fs_update_iostat(F2FS_I_SB(inode), APP_WRITE_IO, ret);
 }
 inode_unlock(inode);
out:
 trace_f2fs_file_write_iter(inode, iocb->ki_pos,
     iov_iter_count(from), ret);
 if (ret > 0)
  ret = generic_write_sync(iocb, ret);
 return ret;
}
