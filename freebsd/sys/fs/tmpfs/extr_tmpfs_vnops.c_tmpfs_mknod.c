
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_mknod_args {struct vattr* a_vap; struct componentname* a_cnp; struct vnode** a_vpp; struct vnode* a_dvp; } ;
struct vnode {int dummy; } ;
struct vattr {scalar_t__ va_type; } ;
struct componentname {int dummy; } ;


 int EINVAL ;
 scalar_t__ VBLK ;
 scalar_t__ VCHR ;
 scalar_t__ VFIFO ;
 int tmpfs_alloc_file (struct vnode*,struct vnode**,struct vattr*,struct componentname*,int *) ;

__attribute__((used)) static int
tmpfs_mknod(struct vop_mknod_args *v)
{
 struct vnode *dvp = v->a_dvp;
 struct vnode **vpp = v->a_vpp;
 struct componentname *cnp = v->a_cnp;
 struct vattr *vap = v->a_vap;

 if (vap->va_type != VBLK && vap->va_type != VCHR &&
     vap->va_type != VFIFO)
  return EINVAL;

 return tmpfs_alloc_file(dvp, vpp, vap, cnp, ((void*)0));
}
