
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vop_getwritemount_args {int a_mpp; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; int v_iflag; TYPE_1__* v_mount; } ;
struct TYPE_4__ {struct vnode* un_dvp; } ;
struct TYPE_3__ {int mnt_flag; } ;


 int EACCES ;
 int EOPNOTSUPP ;
 int KASSERT_UNIONFS_VNODE (struct vnode*) ;
 int MNT_RDONLY ;
 struct vnode* NULLVP ;
 struct vnode* UNIONFSVPTOUPPERVP (struct vnode*) ;
 int UNIONFS_INTERNAL_DEBUG (char*,...) ;
 int VI_FREE ;
 int VI_LOCK (struct vnode*) ;
 int VI_UNLOCK (struct vnode*) ;
 int VOP_GETWRITEMOUNT (struct vnode*,int ) ;
 scalar_t__ VREG ;
 TYPE_2__* VTOUNIONFS (struct vnode*) ;

__attribute__((used)) static int
unionfs_getwritemount(struct vop_getwritemount_args *ap)
{
 int error;
 struct vnode *uvp;
 struct vnode *vp;

 UNIONFS_INTERNAL_DEBUG("unionfs_getwritemount: enter\n");

 error = 0;
 vp = ap->a_vp;

 if (vp == NULLVP || (vp->v_mount->mnt_flag & MNT_RDONLY))
  return (EACCES);

 KASSERT_UNIONFS_VNODE(vp);

 uvp = UNIONFSVPTOUPPERVP(vp);
 if (uvp == NULLVP && VREG == vp->v_type)
  uvp = UNIONFSVPTOUPPERVP(VTOUNIONFS(vp)->un_dvp);

 if (uvp != NULLVP)
  error = VOP_GETWRITEMOUNT(uvp, ap->a_mpp);
 else {
  VI_LOCK(vp);
  if (vp->v_iflag & VI_FREE)
   error = EOPNOTSUPP;
  else
   error = EACCES;
  VI_UNLOCK(vp);
 }

 UNIONFS_INTERNAL_DEBUG("unionfs_getwritemount: leave (%d)\n", error);

 return (error);
}
