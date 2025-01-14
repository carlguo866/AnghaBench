
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct inode {int dummy; } ;
struct fuse_inode {int state; } ;
struct fuse_file {int nodeid; int fh; struct fuse_conn* fc; } ;
struct fuse_fallocate_in {scalar_t__ offset; scalar_t__ length; int mode; int fh; } ;
struct fuse_conn {int no_fallocate; scalar_t__ writeback_cache; } ;
struct file {struct fuse_file* private_data; } ;
typedef scalar_t__ loff_t ;
typedef int inarg ;
struct TYPE_6__ {int in_numargs; TYPE_1__* in_args; int nodeid; int opcode; } ;
struct TYPE_5__ {int size; struct fuse_fallocate_in* value; } ;


 int ENOSYS ;
 long EOPNOTSUPP ;
 int FALLOC_FL_KEEP_SIZE ;
 int FALLOC_FL_PUNCH_HOLE ;
 int FUSE_ARGS (TYPE_2__) ;
 int FUSE_FALLOCATE ;
 int FUSE_I_SIZE_UNSTABLE ;
 TYPE_2__ args ;
 int clear_bit (int ,int *) ;
 struct inode* file_inode (struct file*) ;
 int file_update_time (struct file*) ;
 int fuse_invalidate_attr (struct inode*) ;
 int fuse_simple_request (struct fuse_conn*,TYPE_2__*) ;
 int fuse_write_update_size (struct inode*,scalar_t__) ;
 int fuse_writeback_range (struct inode*,scalar_t__,scalar_t__) ;
 struct fuse_inode* get_fuse_inode (struct inode*) ;
 scalar_t__ i_size_read (struct inode*) ;
 int inode_lock (struct inode*) ;
 int inode_newsize_ok (struct inode*,scalar_t__) ;
 int inode_unlock (struct inode*) ;
 int set_bit (int ,int *) ;
 int truncate_pagecache_range (struct inode*,scalar_t__,scalar_t__) ;

__attribute__((used)) static long fuse_file_fallocate(struct file *file, int mode, loff_t offset,
    loff_t length)
{
 struct fuse_file *ff = file->private_data;
 struct inode *inode = file_inode(file);
 struct fuse_inode *fi = get_fuse_inode(inode);
 struct fuse_conn *fc = ff->fc;
 FUSE_ARGS(args);
 struct fuse_fallocate_in inarg = {
  .fh = ff->fh,
  .offset = offset,
  .length = length,
  .mode = mode
 };
 int err;
 bool lock_inode = !(mode & FALLOC_FL_KEEP_SIZE) ||
      (mode & FALLOC_FL_PUNCH_HOLE);

 if (mode & ~(FALLOC_FL_KEEP_SIZE | FALLOC_FL_PUNCH_HOLE))
  return -EOPNOTSUPP;

 if (fc->no_fallocate)
  return -EOPNOTSUPP;

 if (lock_inode) {
  inode_lock(inode);
  if (mode & FALLOC_FL_PUNCH_HOLE) {
   loff_t endbyte = offset + length - 1;

   err = fuse_writeback_range(inode, offset, endbyte);
   if (err)
    goto out;
  }
 }

 if (!(mode & FALLOC_FL_KEEP_SIZE) &&
     offset + length > i_size_read(inode)) {
  err = inode_newsize_ok(inode, offset + length);
  if (err)
   goto out;
 }

 if (!(mode & FALLOC_FL_KEEP_SIZE))
  set_bit(FUSE_I_SIZE_UNSTABLE, &fi->state);

 args.opcode = FUSE_FALLOCATE;
 args.nodeid = ff->nodeid;
 args.in_numargs = 1;
 args.in_args[0].size = sizeof(inarg);
 args.in_args[0].value = &inarg;
 err = fuse_simple_request(fc, &args);
 if (err == -ENOSYS) {
  fc->no_fallocate = 1;
  err = -EOPNOTSUPP;
 }
 if (err)
  goto out;


 if (!(mode & FALLOC_FL_KEEP_SIZE)) {
  bool changed = fuse_write_update_size(inode, offset + length);

  if (changed && fc->writeback_cache)
   file_update_time(file);
 }

 if (mode & FALLOC_FL_PUNCH_HOLE)
  truncate_pagecache_range(inode, offset, offset + length - 1);

 fuse_invalidate_attr(inode);

out:
 if (!(mode & FALLOC_FL_KEEP_SIZE))
  clear_bit(FUSE_I_SIZE_UNSTABLE, &fi->state);

 if (lock_inode)
  inode_unlock(inode);

 return err;
}
