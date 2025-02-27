
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
 int biba_enabled ;
 int biba_high_effective (struct mac_biba*) ;
 int biba_subject_privileged (struct mac_biba*) ;

__attribute__((used)) static int
biba_system_check_swapon(struct ucred *cred, struct vnode *vp,
    struct label *vplabel)
{
 struct mac_biba *subj, *obj;
 int error;

 if (!biba_enabled)
  return (0);

 subj = SLOT(cred->cr_label);
 obj = SLOT(vplabel);

 error = biba_subject_privileged(subj);
 if (error)
  return (error);

 if (!biba_high_effective(obj))
  return (EACCES);

 return (0);
}
