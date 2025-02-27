
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_long ;
struct vop_cachedlookup_args {struct vnode** a_vpp; struct vnode* a_dvp; struct componentname* a_cnp; } ;
struct vnode {scalar_t__ v_type; TYPE_1__* v_mount; } ;
struct vattr {int va_flags; } ;
struct unionfs_node {struct vnode* un_dvp; struct vnode* un_lowervp; struct vnode* un_uppervp; } ;
struct thread {int dummy; } ;
struct componentname {scalar_t__ cn_nameiop; scalar_t__ cn_flags; char* cn_nameptr; int cn_lkflags; int cn_namelen; int cn_cred; } ;
struct TYPE_3__ {int mnt_flag; } ;


 scalar_t__ DELETE ;
 scalar_t__ DOWHITEOUT ;
 int EJUSTRETURN ;
 int ENOENT ;
 int ENOTDIR ;
 int EROFS ;
 scalar_t__ ISDOTDOT ;
 scalar_t__ ISLASTCN ;
 int ISWHITEOUT ;
 int LK_EXCLUSIVE ;
 int LK_RELEASE ;
 int LK_RETRY ;
 int LK_SHARED ;
 int LK_TYPE_MASK ;
 scalar_t__ LOOKUP ;
 scalar_t__ MAKEENTRY ;
 int MNT_RDONLY ;
 int MOUNTTOUNIONFSMOUNT (TYPE_1__*) ;
 struct vnode* NULLVP ;
 int OPAQUE ;
 scalar_t__ RENAME ;
 int UNIONFSDEBUG (char*) ;
 int UNIONFS_INTERNAL_DEBUG (char*,int,...) ;
 scalar_t__ VDIR ;
 int VOP_GETATTR (struct vnode*,struct vattr*,int ) ;
 int VOP_ISLOCKED (struct vnode*) ;
 int VOP_LOOKUP (struct vnode*,struct vnode**,struct componentname*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 scalar_t__ VSOCK ;
 struct unionfs_node* VTOUNIONFS (struct vnode*) ;
 int cache_enter (struct vnode*,struct vnode*,struct componentname*) ;
 struct thread* curthread ;
 int unionfs_mkshadowdir (int ,struct vnode*,struct unionfs_node*,struct componentname*,struct thread*) ;
 int unionfs_nodeget (TYPE_1__*,struct vnode*,struct vnode*,struct vnode*,struct vnode**,struct componentname*,struct thread*) ;
 int vn_lock (struct vnode*,int) ;
 int vput (struct vnode*) ;
 int vref (struct vnode*) ;
 int vrele (struct vnode*) ;

__attribute__((used)) static int
unionfs_lookup(struct vop_cachedlookup_args *ap)
{
 int iswhiteout;
 int lockflag;
 int error , uerror, lerror;
 u_long nameiop;
 u_long cnflags, cnflagsbk;
 struct unionfs_node *dunp;
 struct vnode *dvp, *udvp, *ldvp, *vp, *uvp, *lvp, *dtmpvp;
 struct vattr va;
 struct componentname *cnp;
 struct thread *td;

 iswhiteout = 0;
 lockflag = 0;
 error = uerror = lerror = ENOENT;
 cnp = ap->a_cnp;
 nameiop = cnp->cn_nameiop;
 cnflags = cnp->cn_flags;
 dvp = ap->a_dvp;
 dunp = VTOUNIONFS(dvp);
 udvp = dunp->un_uppervp;
 ldvp = dunp->un_lowervp;
 vp = uvp = lvp = NULLVP;
 td = curthread;
 *(ap->a_vpp) = NULLVP;

 UNIONFS_INTERNAL_DEBUG("unionfs_lookup: enter: nameiop=%ld, flags=%lx, path=%s\n", nameiop, cnflags, cnp->cn_nameptr);

 if (dvp->v_type != VDIR)
  return (ENOTDIR);




 if ((cnflags & ISLASTCN) &&
     (dvp->v_mount->mnt_flag & MNT_RDONLY) &&
     LOOKUP != nameiop)
  return (EROFS);




 if (cnflags & ISDOTDOT) {
  if (LOOKUP != nameiop && udvp == NULLVP)
   return (EROFS);

  if (udvp != NULLVP) {
   dtmpvp = udvp;
   if (ldvp != NULLVP)
    VOP_UNLOCK(ldvp, LK_RELEASE);
  }
  else
   dtmpvp = ldvp;

  error = VOP_LOOKUP(dtmpvp, &vp, cnp);

  if (dtmpvp == udvp && ldvp != NULLVP) {
   VOP_UNLOCK(udvp, LK_RELEASE);
   vn_lock(dvp, LK_EXCLUSIVE | LK_RETRY);
  }

  if (error == 0) {





   if (nameiop == DELETE || nameiop == RENAME ||
       (cnp->cn_lkflags & LK_TYPE_MASK))
    VOP_UNLOCK(vp, LK_RELEASE);
   vrele(vp);

   VOP_UNLOCK(dvp, LK_RELEASE);
   *(ap->a_vpp) = dunp->un_dvp;
   vref(dunp->un_dvp);

   if (nameiop == DELETE || nameiop == RENAME)
    vn_lock(dunp->un_dvp, LK_EXCLUSIVE | LK_RETRY);
   else if (cnp->cn_lkflags & LK_TYPE_MASK)
    vn_lock(dunp->un_dvp, cnp->cn_lkflags |
        LK_RETRY);

   vn_lock(dvp, LK_EXCLUSIVE | LK_RETRY);
  } else if (error == ENOENT && (cnflags & MAKEENTRY) != 0)
   cache_enter(dvp, NULLVP, cnp);

  UNIONFS_INTERNAL_DEBUG("unionfs_lookup: leave (%d)\n", error);

  return (error);
 }




 if (udvp != NULLVP) {
  uerror = VOP_LOOKUP(udvp, &uvp, cnp);

  if (uerror == 0) {
   if (udvp == uvp) {
    vrele(uvp);
    *(ap->a_vpp) = dvp;
    vref(dvp);

    UNIONFS_INTERNAL_DEBUG("unionfs_lookup: leave (%d)\n", uerror);

    return (uerror);
   }
   if (nameiop == DELETE || nameiop == RENAME ||
       (cnp->cn_lkflags & LK_TYPE_MASK))
    VOP_UNLOCK(uvp, LK_RELEASE);
  }


  if (uerror == ENOENT || uerror == EJUSTRETURN)
   if (cnp->cn_flags & ISWHITEOUT)
    iswhiteout = 1;
  if (iswhiteout == 0 && ldvp != NULLVP)
   if (!VOP_GETATTR(udvp, &va, cnp->cn_cred) &&
       (va.va_flags & OPAQUE))
    iswhiteout = 1;



 }




 if (ldvp != NULLVP && !(cnflags & DOWHITEOUT) && iswhiteout == 0) {

  cnp->cn_nameiop = LOOKUP;
  cnflagsbk = cnp->cn_flags;
  cnp->cn_flags = cnflags;

  lerror = VOP_LOOKUP(ldvp, &lvp, cnp);

  cnp->cn_nameiop = nameiop;
  if (udvp != NULLVP && (uerror == 0 || uerror == EJUSTRETURN))
   cnp->cn_flags = cnflagsbk;

  if (lerror == 0) {
   if (ldvp == lvp) {
    if (uvp != NULLVP)
     vrele(uvp);
    vrele(lvp);
    *(ap->a_vpp) = dvp;
    vref(dvp);

    UNIONFS_INTERNAL_DEBUG("unionfs_lookup: leave (%d)\n", lerror);

    return (lerror);
   }
   if (cnp->cn_lkflags & LK_TYPE_MASK)
    VOP_UNLOCK(lvp, LK_RELEASE);
  }
 }




 if (uvp == NULLVP && lvp == NULLVP) {
  UNIONFS_INTERNAL_DEBUG("unionfs_lookup: leave (%d)\n",
      (udvp != NULLVP ? uerror : lerror));
  return (udvp != NULLVP ? uerror : lerror);
 }




 if (uvp != NULLVP && lvp != NULLVP && uvp->v_type != lvp->v_type) {
  vrele(lvp);
  lvp = NULLVP;
 }




 if (uerror != 0 && uerror != EJUSTRETURN && udvp != NULLVP &&
     lerror == 0 && lvp != NULLVP && lvp->v_type == VDIR &&
     !(dvp->v_mount->mnt_flag & MNT_RDONLY) &&
     (1 < cnp->cn_namelen || '.' != *(cnp->cn_nameptr))) {

  error = unionfs_nodeget(dvp->v_mount, NULLVP, lvp, dvp, &vp,
      cnp, td);
  if (error != 0)
   goto unionfs_lookup_out;

  if (LK_SHARED == (cnp->cn_lkflags & LK_TYPE_MASK))
   VOP_UNLOCK(vp, LK_RELEASE);
  if (LK_EXCLUSIVE != VOP_ISLOCKED(vp)) {
   vn_lock(vp, LK_EXCLUSIVE | LK_RETRY);
   lockflag = 1;
  }
  error = unionfs_mkshadowdir(MOUNTTOUNIONFSMOUNT(dvp->v_mount),
      udvp, VTOUNIONFS(vp), cnp, td);
  if (lockflag != 0)
   VOP_UNLOCK(vp, LK_RELEASE);
  if (error != 0) {
   UNIONFSDEBUG("unionfs_lookup: Unable to create shadow dir.");
   if ((cnp->cn_lkflags & LK_TYPE_MASK) == LK_EXCLUSIVE)
    vput(vp);
   else
    vrele(vp);
   goto unionfs_lookup_out;
  }
  if ((cnp->cn_lkflags & LK_TYPE_MASK) == LK_SHARED)
   vn_lock(vp, LK_SHARED | LK_RETRY);
 }



 else {
  if (uvp != NULLVP)
   error = uerror;
  else
   error = lerror;
  if (error != 0)
   goto unionfs_lookup_out;



  if (uvp != NULLVP && uvp->v_type == VSOCK) {
   vp = uvp;
   vref(vp);
   if (cnp->cn_lkflags & LK_TYPE_MASK)
    vn_lock(vp, cnp->cn_lkflags | LK_RETRY);
  }
  else if (lvp != NULLVP && lvp->v_type == VSOCK) {
   vp = lvp;
   vref(vp);
   if (cnp->cn_lkflags & LK_TYPE_MASK)
    vn_lock(vp, cnp->cn_lkflags | LK_RETRY);
  }



  else
   error = unionfs_nodeget(dvp->v_mount, uvp, lvp,
       dvp, &vp, cnp, td);
  if (error != 0) {
   UNIONFSDEBUG("unionfs_lookup: Unable to create unionfs vnode.");
   goto unionfs_lookup_out;
  }
  if ((nameiop == DELETE || nameiop == RENAME) &&
      (cnp->cn_lkflags & LK_TYPE_MASK) == 0)
   vn_lock(vp, LK_EXCLUSIVE | LK_RETRY);
 }

 *(ap->a_vpp) = vp;

 if ((cnflags & MAKEENTRY) && vp->v_type != VSOCK)
  cache_enter(dvp, vp, cnp);

unionfs_lookup_out:
 if (uvp != NULLVP)
  vrele(uvp);
 if (lvp != NULLVP)
  vrele(lvp);

 if (error == ENOENT && (cnflags & MAKEENTRY) != 0)
  cache_enter(dvp, NULLVP, cnp);

 UNIONFS_INTERNAL_DEBUG("unionfs_lookup: leave (%d)\n", error);

 return (error);
}
