
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int * vfs_context_t ;
struct vnode {int dummy; } ;
typedef TYPE_2__* mount_t ;
struct TYPE_7__ {TYPE_1__* mnt_op; } ;
struct TYPE_6__ {int (* vfs_root ) (TYPE_2__*,struct vnode**,int *) ;} ;


 int ENOTSUP ;
 TYPE_2__* dead_mountp ;
 int stub1 (TYPE_2__*,struct vnode**,int *) ;
 int * vfs_context_current () ;

int
VFS_ROOT(mount_t mp, struct vnode ** vpp, vfs_context_t ctx)
{
 int error;

 if ((mp == dead_mountp) || (mp->mnt_op->vfs_root == 0))
  return(ENOTSUP);

 if (ctx == ((void*)0)) {
  ctx = vfs_context_current();
 }

 error = (*mp->mnt_op->vfs_root)(mp, vpp, ctx);

 return (error);
}
