
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vfs_context_t ;
typedef TYPE_2__* mount_t ;
struct TYPE_7__ {TYPE_1__* mnt_op; } ;
struct TYPE_6__ {int (* vfs_start ) (TYPE_2__*,int,int ) ;} ;


 int ENOTSUP ;
 TYPE_2__* dead_mountp ;
 int stub1 (TYPE_2__*,int,int ) ;

int
VFS_START(mount_t mp, int flags, vfs_context_t ctx)
{
 int error;

 if ((mp == dead_mountp) || (mp->mnt_op->vfs_start == 0))
  return(ENOTSUP);

 error = (*mp->mnt_op->vfs_start)(mp, flags, ctx);

 return (error);
}
