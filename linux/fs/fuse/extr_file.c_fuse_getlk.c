
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct inode {int dummy; } ;
struct fuse_lk_out {int lk; } ;
struct fuse_lk_in {int dummy; } ;
struct fuse_conn {int dummy; } ;
struct file_lock {int dummy; } ;
struct file {int dummy; } ;
typedef int outarg ;
struct TYPE_7__ {int out_numargs; TYPE_1__* out_args; } ;
struct TYPE_6__ {int size; struct fuse_lk_out* value; } ;


 int FUSE_ARGS (TYPE_2__) ;
 int FUSE_GETLK ;
 TYPE_2__ args ;
 int convert_fuse_file_lock (struct fuse_conn*,int *,struct file_lock*) ;
 struct inode* file_inode (struct file*) ;
 int fuse_lk_fill (TYPE_2__*,struct file*,struct file_lock*,int ,int ,int ,struct fuse_lk_in*) ;
 int fuse_simple_request (struct fuse_conn*,TYPE_2__*) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;

__attribute__((used)) static int fuse_getlk(struct file *file, struct file_lock *fl)
{
 struct inode *inode = file_inode(file);
 struct fuse_conn *fc = get_fuse_conn(inode);
 FUSE_ARGS(args);
 struct fuse_lk_in inarg;
 struct fuse_lk_out outarg;
 int err;

 fuse_lk_fill(&args, file, fl, FUSE_GETLK, 0, 0, &inarg);
 args.out_numargs = 1;
 args.out_args[0].size = sizeof(outarg);
 args.out_args[0].value = &outarg;
 err = fuse_simple_request(fc, &args);
 if (!err)
  err = convert_fuse_file_lock(fc, &outarg.lk, fl);

 return err;
}
