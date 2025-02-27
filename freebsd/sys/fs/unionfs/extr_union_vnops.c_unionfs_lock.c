
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_lock1_args {int a_flags; struct vnode* a_vp; } ;
struct vnode {int v_iflag; struct mount* v_mount; } ;
struct unionfs_node {struct vnode* un_uppervp; struct vnode* un_lowervp; } ;
struct unionfs_mount {struct vnode* um_rootvp; } ;
struct mount {int dummy; } ;


 int EBUSY ;
 int KASSERT_UNIONFS_VNODE (struct vnode*) ;
 int LK_CANRECURSE ;
 int LK_EXCLUSIVE ;
 int LK_INTERLOCK ;
 int LK_NOWAIT ;
 int LK_RELEASE ;
 int LK_TYPE_MASK ;
 int LK_UPGRADE ;
 struct unionfs_mount* MOUNTTOUNIONFSMOUNT (struct mount*) ;
 int MTX_DUPOK ;
 struct vnode* NULLVP ;
 int VI_LOCK (struct vnode*) ;
 int VI_LOCK_FLAGS (struct vnode*,int ) ;
 int VI_OWEINACT ;
 int VI_UNLOCK (struct vnode*) ;
 int VOP_LOCK (struct vnode*,int) ;
 int VOP_UNLOCK (struct vnode*,int) ;
 struct unionfs_node* VTOUNIONFS (struct vnode*) ;
 int panic (char*,int) ;
 int unionfs_get_llt_revlock (struct vnode*,int) ;
 int unionfs_revlock (struct vnode*,int) ;
 int vdrop (struct vnode*) ;
 int vholdl (struct vnode*) ;
 int vholdnz (struct vnode*) ;
 int vop_stdlock (struct vop_lock1_args*) ;

__attribute__((used)) static int
unionfs_lock(struct vop_lock1_args *ap)
{
 int error;
 int flags;
 int revlock;
 int interlock;
 int uhold;
 struct mount *mp;
 struct unionfs_mount *ump;
 struct unionfs_node *unp;
 struct vnode *vp;
 struct vnode *uvp;
 struct vnode *lvp;

 KASSERT_UNIONFS_VNODE(ap->a_vp);

 error = 0;
 interlock = 1;
 uhold = 0;
 flags = ap->a_flags;
 vp = ap->a_vp;

 if (LK_RELEASE == (flags & LK_TYPE_MASK) || !(flags & LK_TYPE_MASK))
  return (VOP_UNLOCK(vp, flags | LK_RELEASE));

 if ((flags & LK_INTERLOCK) == 0)
  VI_LOCK(vp);

 mp = vp->v_mount;
 if (mp == ((void*)0))
  goto unionfs_lock_null_vnode;

 ump = MOUNTTOUNIONFSMOUNT(mp);
 unp = VTOUNIONFS(vp);
 if (ump == ((void*)0) || unp == ((void*)0))
  goto unionfs_lock_null_vnode;
 lvp = unp->un_lowervp;
 uvp = unp->un_uppervp;

 if ((revlock = unionfs_get_llt_revlock(vp, flags)) == 0)
  panic("unknown lock type: 0x%x", flags & LK_TYPE_MASK);

 if ((vp->v_iflag & VI_OWEINACT) != 0)
  flags |= LK_NOWAIT;





 if ((flags & LK_TYPE_MASK) == LK_EXCLUSIVE &&
     vp == ump->um_rootvp)
  flags |= LK_CANRECURSE;

 if (lvp != NULLVP) {
  if (uvp != NULLVP && flags & LK_UPGRADE) {

   vholdnz(uvp);
   uhold = 1;
   VOP_UNLOCK(uvp, LK_RELEASE);
   unp = VTOUNIONFS(vp);
   if (unp == ((void*)0)) {

    VI_UNLOCK(vp);
    VOP_UNLOCK(lvp, LK_RELEASE);
    vdrop(uvp);
    return (EBUSY);
   }
  }
  VI_LOCK_FLAGS(lvp, MTX_DUPOK);
  flags |= LK_INTERLOCK;
  vholdl(lvp);

  VI_UNLOCK(vp);
  ap->a_flags &= ~LK_INTERLOCK;

  error = VOP_LOCK(lvp, flags);

  VI_LOCK(vp);
  unp = VTOUNIONFS(vp);
  if (unp == ((void*)0)) {

   VI_UNLOCK(vp);
   if (error == 0)
    VOP_UNLOCK(lvp, LK_RELEASE);
   vdrop(lvp);
   if (uhold != 0)
    vdrop(uvp);
   return (vop_stdlock(ap));
  }
 }

 if (error == 0 && uvp != NULLVP) {
  if (uhold && flags & LK_UPGRADE) {
   flags &= ~LK_TYPE_MASK;
   flags |= LK_EXCLUSIVE;
  }
  VI_LOCK_FLAGS(uvp, MTX_DUPOK);
  flags |= LK_INTERLOCK;
  if (uhold == 0) {
   vholdl(uvp);
   uhold = 1;
  }

  VI_UNLOCK(vp);
  ap->a_flags &= ~LK_INTERLOCK;

  error = VOP_LOCK(uvp, flags);

  VI_LOCK(vp);
  unp = VTOUNIONFS(vp);
  if (unp == ((void*)0)) {

   VI_UNLOCK(vp);
   if (error == 0)
    VOP_UNLOCK(uvp, LK_RELEASE);
   vdrop(uvp);
   if (lvp != NULLVP) {
    VOP_UNLOCK(lvp, LK_RELEASE);
    vdrop(lvp);
   }
   return (vop_stdlock(ap));
  }
  if (error != 0 && lvp != NULLVP) {

   VI_UNLOCK(vp);
   unionfs_revlock(lvp, revlock);
   interlock = 0;
  }
 }

 if (interlock)
  VI_UNLOCK(vp);
 if (lvp != NULLVP)
  vdrop(lvp);
 if (uhold != 0)
  vdrop(uvp);

 return (error);

unionfs_lock_null_vnode:
 ap->a_flags |= LK_INTERLOCK;
 return (vop_stdlock(ap));
}
