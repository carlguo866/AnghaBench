
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
typedef int temp_cred ;
struct ucred {int cr_label; } ;
typedef TYPE_1__* posix_cred_t ;
typedef struct ucred* kauth_cred_t ;
typedef scalar_t__ gid_t ;
struct TYPE_3__ {scalar_t__ cr_uid; scalar_t__ cr_ruid; scalar_t__ cr_svuid; scalar_t__ cr_gid; scalar_t__ cr_rgid; scalar_t__ cr_svgid; int cr_flags; int cr_ngroups; void* cr_gmuid; } ;


 int CRF_NOMEMBERD ;
 void* KAUTH_UID_NONE ;
 int NULLCRED_CHECK (struct ucred*) ;
 int TRUE ;
 int bzero (struct ucred*,int) ;
 scalar_t__ kauth_cred_change_egid (struct ucred*,scalar_t__) ;
 struct ucred* kauth_cred_update (struct ucred*,struct ucred*,int ) ;
 TYPE_1__* posix_cred_get (struct ucred*) ;

kauth_cred_t
kauth_cred_setuidgid(kauth_cred_t cred, uid_t uid, gid_t gid)
{
 struct ucred temp_cred;
 posix_cred_t temp_pcred = posix_cred_get(&temp_cred);
 posix_cred_t pcred;

 NULLCRED_CHECK(cred);

 pcred = posix_cred_get(cred);





 if (pcred->cr_uid == uid && pcred->cr_ruid == uid && pcred->cr_svuid == uid &&
  pcred->cr_gid == gid && pcred->cr_rgid == gid && pcred->cr_svgid == gid) {

  return(cred);
 }





 bzero(&temp_cred, sizeof(temp_cred));
 temp_pcred->cr_uid = uid;
 temp_pcred->cr_ruid = uid;
 temp_pcred->cr_svuid = uid;
 temp_pcred->cr_flags = pcred->cr_flags;

 if (pcred->cr_flags & CRF_NOMEMBERD) {
  temp_pcred->cr_gmuid = KAUTH_UID_NONE;
  temp_pcred->cr_flags |= CRF_NOMEMBERD;
 } else {
  temp_pcred->cr_gmuid = uid;
  temp_pcred->cr_flags &= ~CRF_NOMEMBERD;
 }
 temp_pcred->cr_ngroups = 1;

 if (kauth_cred_change_egid(&temp_cred, gid)) {
  temp_pcred->cr_gmuid = KAUTH_UID_NONE;
  temp_pcred->cr_flags |= CRF_NOMEMBERD;
 }
 temp_pcred->cr_rgid = gid;
 temp_pcred->cr_svgid = gid;




 return(kauth_cred_update(cred, &temp_cred, TRUE));
}
