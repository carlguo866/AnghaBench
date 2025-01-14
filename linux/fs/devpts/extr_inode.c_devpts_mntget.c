
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {scalar_t__ mnt_root; TYPE_1__* mnt_sb; } ;
struct pts_fs_info {int dummy; } ;
struct path {scalar_t__ dentry; struct vfsmount* mnt; } ;
struct file {struct path f_path; } ;
struct TYPE_2__ {scalar_t__ s_magic; } ;


 struct pts_fs_info* DEVPTS_SB (TYPE_1__*) ;
 scalar_t__ DEVPTS_SUPER_MAGIC ;
 int ENODEV ;
 struct vfsmount* ERR_PTR (int) ;
 int devpts_ptmx_path (struct path*) ;
 int dput (scalar_t__) ;
 scalar_t__ follow_up (struct path*) ;
 int mntput (struct vfsmount*) ;
 int path_get (struct path*) ;

struct vfsmount *devpts_mntget(struct file *filp, struct pts_fs_info *fsi)
{
 struct path path;
 int err = 0;

 path = filp->f_path;
 path_get(&path);




 while (path.mnt->mnt_root == path.dentry)
  if (follow_up(&path) == 0)
   break;


 if ((path.mnt->mnt_sb->s_magic != DEVPTS_SUPER_MAGIC) ||
     (DEVPTS_SB(path.mnt->mnt_sb) != fsi))
  err = devpts_ptmx_path(&path);
 dput(path.dentry);
 if (!err) {
  if (DEVPTS_SB(path.mnt->mnt_sb) == fsi)
   return path.mnt;

  err = -ENODEV;
 }

 mntput(path.mnt);
 return ERR_PTR(err);
}
