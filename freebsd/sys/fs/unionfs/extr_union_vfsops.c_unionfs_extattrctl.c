
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct unionfs_node {scalar_t__ un_uppervp; scalar_t__ un_lowervp; } ;
struct unionfs_mount {TYPE_2__* um_lowervp; TYPE_1__* um_uppervp; } ;
struct mount {int dummy; } ;
struct TYPE_4__ {int v_mount; } ;
struct TYPE_3__ {int v_mount; } ;


 struct unionfs_mount* MOUNTTOUNIONFSMOUNT (struct mount*) ;
 scalar_t__ NULLVP ;
 int VFS_EXTATTRCTL (int ,int,scalar_t__,int,char const*) ;
 struct unionfs_node* VTOUNIONFS (struct vnode*) ;

__attribute__((used)) static int
unionfs_extattrctl(struct mount *mp, int cmd, struct vnode *filename_vp,
    int namespace, const char *attrname)
{
 struct unionfs_mount *ump;
 struct unionfs_node *unp;

 ump = MOUNTTOUNIONFSMOUNT(mp);
 unp = VTOUNIONFS(filename_vp);

 if (unp->un_uppervp != NULLVP) {
  return (VFS_EXTATTRCTL(ump->um_uppervp->v_mount, cmd,
      unp->un_uppervp, namespace, attrname));
 } else {
  return (VFS_EXTATTRCTL(ump->um_lowervp->v_mount, cmd,
      unp->un_lowervp, namespace, attrname));
 }
}
