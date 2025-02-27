
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct vop_rmdir_args {TYPE_1__* a_vp; TYPE_1__* a_dvp; struct componentname* a_cnp; } ;
struct vnode {int dummy; } ;
struct unionfs_node {int un_path; struct vnode* un_lowervp; struct vnode* un_uppervp; } ;
struct unionfs_mount {scalar_t__ um_whitemode; } ;
struct thread {int dummy; } ;
struct componentname {int cn_flags; int cn_cred; } ;
struct TYPE_6__ {int v_mount; } ;


 int DOWHITEOUT ;
 int EOPNOTSUPP ;
 int EROFS ;
 int KASSERT_UNIONFS_VNODE (TYPE_1__*) ;
 struct unionfs_mount* MOUNTTOUNIONFSMOUNT (int ) ;
 struct vnode* NULLVP ;
 int UNIONFS_INTERNAL_DEBUG (char*,...) ;
 scalar_t__ UNIONFS_WHITE_ALWAYS ;
 int VOP_RMDIR (struct vnode*,struct vnode*,struct componentname*) ;
 struct unionfs_node* VTOUNIONFS (TYPE_1__*) ;
 int cache_purge (TYPE_1__*) ;
 struct thread* curthread ;
 int unionfs_check_rmdir (TYPE_1__*,int ,struct thread*) ;
 int unionfs_mkwhiteout (struct vnode*,struct componentname*,struct thread*,int ) ;
 int unionfs_relookup_for_delete (TYPE_1__*,struct componentname*,struct thread*) ;

__attribute__((used)) static int
unionfs_rmdir(struct vop_rmdir_args *ap)
{
 int error;
 struct unionfs_node *dunp;
 struct unionfs_node *unp;
 struct unionfs_mount *ump;
 struct componentname *cnp;
 struct thread *td;
 struct vnode *udvp;
 struct vnode *uvp;
 struct vnode *lvp;

 UNIONFS_INTERNAL_DEBUG("unionfs_rmdir: enter\n");

 KASSERT_UNIONFS_VNODE(ap->a_dvp);
 KASSERT_UNIONFS_VNODE(ap->a_vp);

 error = 0;
 dunp = VTOUNIONFS(ap->a_dvp);
 unp = VTOUNIONFS(ap->a_vp);
 cnp = ap->a_cnp;
 td = curthread;
 udvp = dunp->un_uppervp;
 uvp = unp->un_uppervp;
 lvp = unp->un_lowervp;

 if (udvp == NULLVP)
  return (EROFS);

 if (udvp == uvp)
  return (EOPNOTSUPP);

 if (uvp != NULLVP) {
  if (lvp != NULLVP) {
   error = unionfs_check_rmdir(ap->a_vp, cnp->cn_cred, td);
   if (error != 0)
    return (error);
  }
  ump = MOUNTTOUNIONFSMOUNT(ap->a_vp->v_mount);
  if (ump->um_whitemode == UNIONFS_WHITE_ALWAYS || lvp != NULLVP)
   cnp->cn_flags |= DOWHITEOUT;
  error = unionfs_relookup_for_delete(ap->a_dvp, cnp, td);
  if (!error)
   error = VOP_RMDIR(udvp, uvp, cnp);
 }
 else if (lvp != NULLVP)
  error = unionfs_mkwhiteout(udvp, cnp, td, unp->un_path);

 if (error == 0) {
  cache_purge(ap->a_dvp);
  cache_purge(ap->a_vp);
 }

 UNIONFS_INTERNAL_DEBUG("unionfs_rmdir: leave (%d)\n", error);

 return (error);
}
