
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct mount {TYPE_2__* mnt_vfc; } ;
struct TYPE_4__ {TYPE_1__* vfc_vfsops_sd; } ;
struct TYPE_3__ {int (* vfs_reclaim_lowervp ) (struct mount*,struct vnode*) ;} ;


 int SIGDEFERSTOP_SILENT ;
 int sigallowstop (int) ;
 int sigdeferstop (int ) ;
 int stub1 (struct mount*,struct vnode*) ;

__attribute__((used)) static void
vfs_reclaim_lowervp_sigdefer(struct mount *mp, struct vnode *vp)
{
 int prev_stops;

 if (*mp->mnt_vfc->vfc_vfsops_sd->vfs_reclaim_lowervp == ((void*)0))
  return;
 prev_stops = sigdeferstop(SIGDEFERSTOP_SILENT);
 (*mp->mnt_vfc->vfc_vfsops_sd->vfs_reclaim_lowervp)(mp, vp);
 sigallowstop(prev_stops);
}
