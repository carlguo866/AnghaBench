
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vnode {TYPE_1__* v_mount; } ;
struct TYPE_6__ {scalar_t__ tv_sec; } ;
struct TYPE_8__ {scalar_t__ tv_sec; } ;
struct TYPE_7__ {scalar_t__ tv_sec; } ;
struct vattr {TYPE_2__ va_birthtime; TYPE_4__ va_mtime; TYPE_3__ va_atime; } ;
struct ucred {int dummy; } ;
struct tmpfs_node {int tn_flags; TYPE_2__ tn_birthtime; int tn_status; } ;
struct thread {int dummy; } ;
struct TYPE_5__ {int mnt_flag; } ;


 int APPEND ;
 int ASSERT_VOP_ELOCKED (struct vnode*,char*) ;
 int EPERM ;
 int EROFS ;
 int IMMUTABLE ;
 int MNT_RDONLY ;
 int TMPFS_NODE_ACCESSED ;
 int TMPFS_NODE_MODIFIED ;
 scalar_t__ VNOVAL ;
 struct tmpfs_node* VP_TO_TMPFS_NODE (struct vnode*) ;
 int tmpfs_itimes (struct vnode*,TYPE_3__*,TYPE_4__*) ;
 int vn_utimes_perm (struct vnode*,struct vattr*,struct ucred*,struct thread*) ;

int
tmpfs_chtimes(struct vnode *vp, struct vattr *vap,
    struct ucred *cred, struct thread *l)
{
 int error;
 struct tmpfs_node *node;

 ASSERT_VOP_ELOCKED(vp, "chtimes");

 node = VP_TO_TMPFS_NODE(vp);


 if (vp->v_mount->mnt_flag & MNT_RDONLY)
  return EROFS;


 if (node->tn_flags & (IMMUTABLE | APPEND))
  return EPERM;

 error = vn_utimes_perm(vp, vap, cred, l);
 if (error != 0)
  return (error);

 if (vap->va_atime.tv_sec != VNOVAL)
  node->tn_status |= TMPFS_NODE_ACCESSED;

 if (vap->va_mtime.tv_sec != VNOVAL)
  node->tn_status |= TMPFS_NODE_MODIFIED;

 if (vap->va_birthtime.tv_sec != VNOVAL)
  node->tn_status |= TMPFS_NODE_MODIFIED;

 tmpfs_itimes(vp, &vap->va_atime, &vap->va_mtime);

 if (vap->va_birthtime.tv_sec != VNOVAL)
  node->tn_birthtime = vap->va_birthtime;
 ASSERT_VOP_ELOCKED(vp, "chtimes2");

 return (0);
}
