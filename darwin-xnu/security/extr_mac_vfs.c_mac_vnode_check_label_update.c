
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
struct vnode {int v_label; } ;
struct label {int dummy; } ;
typedef int kauth_cred_t ;


 int MAC_CHECK (int ,int ,struct vnode*,int ,struct label*) ;
 int mac_cred_check_enforce (int ) ;
 int mac_vnode_enforce ;
 int vfs_context_ucred (int ) ;
 int vnode_check_label_update ;

int
mac_vnode_check_label_update(vfs_context_t ctx, struct vnode *vp,
    struct label *newlabel)
{
 kauth_cred_t cred;
 int error;






 cred = vfs_context_ucred(ctx);
 if (!mac_cred_check_enforce(cred))
  return (0);
 MAC_CHECK(vnode_check_label_update, cred, vp, vp->v_label, newlabel);

 return (error);
}
