
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int dummy; } ;
struct iov_iter {int dummy; } ;
struct file {int dummy; } ;


 long EBADF ;
 unsigned int PIPE_BUF_FLAG_GIFT ;
 unsigned int SPLICE_F_GIFT ;
 struct pipe_inode_info* get_pipe_info (struct file*) ;
 long iter_to_pipe (struct iov_iter*,struct pipe_inode_info*,unsigned int) ;
 int pipe_lock (struct pipe_inode_info*) ;
 int pipe_unlock (struct pipe_inode_info*) ;
 long wait_for_space (struct pipe_inode_info*,unsigned int) ;
 int wakeup_pipe_readers (struct pipe_inode_info*) ;

__attribute__((used)) static long vmsplice_to_pipe(struct file *file, struct iov_iter *iter,
        unsigned int flags)
{
 struct pipe_inode_info *pipe;
 long ret = 0;
 unsigned buf_flag = 0;

 if (flags & SPLICE_F_GIFT)
  buf_flag = PIPE_BUF_FLAG_GIFT;

 pipe = get_pipe_info(file);
 if (!pipe)
  return -EBADF;

 pipe_lock(pipe);
 ret = wait_for_space(pipe, flags);
 if (!ret)
  ret = iter_to_pipe(iter, pipe, buf_flag);
 pipe_unlock(pipe);
 if (ret > 0)
  wakeup_pipe_readers(pipe);
 return ret;
}
