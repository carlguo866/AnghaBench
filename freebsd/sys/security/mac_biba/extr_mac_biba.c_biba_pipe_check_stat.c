
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {struct label* cr_label; } ;
struct pipepair {int dummy; } ;
struct mac_biba {int dummy; } ;
struct label {int dummy; } ;


 int EACCES ;
 struct mac_biba* SLOT (struct label*) ;
 int biba_dominate_effective (struct mac_biba*,struct mac_biba*) ;
 int biba_enabled ;

__attribute__((used)) static int
biba_pipe_check_stat(struct ucred *cred, struct pipepair *pp,
    struct label *pplabel)
{
 struct mac_biba *subj, *obj;

 if (!biba_enabled)
  return (0);

 subj = SLOT(cred->cr_label);
 obj = SLOT(pplabel);

 if (!biba_dominate_effective(obj, subj))
  return (EACCES);

 return (0);
}
