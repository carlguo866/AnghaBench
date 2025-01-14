
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_open_context {int flags; } ;
struct inode {int dummy; } ;
struct file {int f_flags; } ;


 scalar_t__ IS_SYNC (struct inode*) ;
 int NFS_CONTEXT_ERROR_WRITE ;
 int O_SYNC ;
 struct nfs_open_context* nfs_file_open_context (struct file*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int nfs_need_sync_write(struct file *filp, struct inode *inode)
{
 struct nfs_open_context *ctx;

 if (IS_SYNC(inode) || (filp->f_flags & O_SYNC))
  return 1;
 ctx = nfs_file_open_context(filp);
 if (test_bit(NFS_CONTEXT_ERROR_WRITE, &ctx->flags))
  return 1;
 return 0;
}
