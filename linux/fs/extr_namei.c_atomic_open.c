
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int umode_t ;
struct path {int mnt; struct dentry* dentry; } ;
struct open_flags {int acc_mode; } ;
struct TYPE_7__ {int mnt; TYPE_1__* dentry; } ;
struct nameidata {int flags; TYPE_3__ path; } ;
struct inode {TYPE_2__* i_op; } ;
struct TYPE_8__ {struct dentry* dentry; int mnt; } ;
struct file {int f_mode; TYPE_4__ f_path; } ;
struct dentry {int dummy; } ;
struct TYPE_6__ {int (* atomic_open ) (struct inode*,struct dentry*,struct file*,int ,int ) ;} ;
struct TYPE_5__ {struct inode* d_inode; } ;


 int EINVAL ;
 int EIO ;
 int ENOENT ;
 int FMODE_CREATED ;
 int FMODE_OPENED ;
 int LOOKUP_DIRECTORY ;
 int O_CREAT ;
 int O_DIRECTORY ;
 int O_EXCL ;
 int O_TRUNC ;
 scalar_t__ WARN_ON (int) ;
 int d_is_negative (struct dentry*) ;
 int d_lookup_done (struct dentry*) ;
 int dput (struct dentry*) ;
 int fsnotify_create (struct inode*,struct dentry*) ;
 int may_open (TYPE_4__*,int,int) ;
 int open_to_namei_flags (int) ;
 int stub1 (struct inode*,struct dentry*,struct file*,int ,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int atomic_open(struct nameidata *nd, struct dentry *dentry,
   struct path *path, struct file *file,
   const struct open_flags *op,
   int open_flag, umode_t mode)
{
 struct dentry *const DENTRY_NOT_SET = (void *) -1UL;
 struct inode *dir = nd->path.dentry->d_inode;
 int error;

 if (!(~open_flag & (O_EXCL | O_CREAT)))
  open_flag &= ~O_TRUNC;

 if (nd->flags & LOOKUP_DIRECTORY)
  open_flag |= O_DIRECTORY;

 file->f_path.dentry = DENTRY_NOT_SET;
 file->f_path.mnt = nd->path.mnt;
 error = dir->i_op->atomic_open(dir, dentry, file,
           open_to_namei_flags(open_flag), mode);
 d_lookup_done(dentry);
 if (!error) {
  if (file->f_mode & FMODE_OPENED) {




   int acc_mode = op->acc_mode;
   if (file->f_mode & FMODE_CREATED) {
    WARN_ON(!(open_flag & O_CREAT));
    fsnotify_create(dir, dentry);
    acc_mode = 0;
   }
   error = may_open(&file->f_path, acc_mode, open_flag);
   if (WARN_ON(error > 0))
    error = -EINVAL;
  } else if (WARN_ON(file->f_path.dentry == DENTRY_NOT_SET)) {
   error = -EIO;
  } else {
   if (file->f_path.dentry) {
    dput(dentry);
    dentry = file->f_path.dentry;
   }
   if (file->f_mode & FMODE_CREATED)
    fsnotify_create(dir, dentry);
   if (unlikely(d_is_negative(dentry))) {
    error = -ENOENT;
   } else {
    path->dentry = dentry;
    path->mnt = nd->path.mnt;
    return 0;
   }
  }
 }
 dput(dentry);
 return error;
}
