
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct fuse_open_out {int open_flags; scalar_t__ fh; } ;
struct fuse_file {int open_flags; int nodeid; scalar_t__ fh; } ;
struct fuse_conn {int no_opendir; int no_open; } ;
struct file {struct fuse_file* private_data; } ;


 int ENOMEM ;
 int ENOSYS ;
 int FOPEN_CACHE_DIR ;
 int FOPEN_DIRECT_IO ;
 int FOPEN_KEEP_CACHE ;
 int FUSE_OPEN ;
 int FUSE_OPENDIR ;
 struct fuse_file* fuse_file_alloc (struct fuse_conn*) ;
 int fuse_file_free (struct fuse_file*) ;
 int fuse_send_open (struct fuse_conn*,int ,struct file*,int,struct fuse_open_out*) ;

int fuse_do_open(struct fuse_conn *fc, u64 nodeid, struct file *file,
   bool isdir)
{
 struct fuse_file *ff;
 int opcode = isdir ? FUSE_OPENDIR : FUSE_OPEN;

 ff = fuse_file_alloc(fc);
 if (!ff)
  return -ENOMEM;

 ff->fh = 0;

 ff->open_flags = FOPEN_KEEP_CACHE | (isdir ? FOPEN_CACHE_DIR : 0);
 if (isdir ? !fc->no_opendir : !fc->no_open) {
  struct fuse_open_out outarg;
  int err;

  err = fuse_send_open(fc, nodeid, file, opcode, &outarg);
  if (!err) {
   ff->fh = outarg.fh;
   ff->open_flags = outarg.open_flags;

  } else if (err != -ENOSYS) {
   fuse_file_free(ff);
   return err;
  } else {
   if (isdir)
    fc->no_opendir = 1;
   else
    fc->no_open = 1;
  }
 }

 if (isdir)
  ff->open_flags &= ~FOPEN_DIRECT_IO;

 ff->nodeid = nodeid;
 file->private_data = ff;

 return 0;
}
