
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {struct label* cr_label; } ;
struct mac_biba {int dummy; } ;
struct label {int dummy; } ;


 int EACCES ;
 struct mac_biba* SLOT (struct label*) ;
 int biba_dominate_effective (struct mac_biba*,struct mac_biba*) ;
 int biba_enabled ;
 int revocation_enabled ;

__attribute__((used)) static int
biba_vnode_check_write(struct ucred *active_cred,
    struct ucred *file_cred, struct vnode *vp, struct label *vplabel)
{
 struct mac_biba *subj, *obj;

 if (!biba_enabled || !revocation_enabled)
  return (0);

 subj = SLOT(active_cred->cr_label);
 obj = SLOT(vplabel);

 if (!biba_dominate_effective(subj, obj))
  return (EACCES);

 return (0);
}
