
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct task_security_struct {int sid; } ;
struct superblock_security_struct {int sid; } ;
struct cred {struct task_security_struct* security; } ;


 int FILESYSTEM__RELABELFROM ;
 int FILESYSTEM__RELABELTO ;
 int SECCLASS_FILESYSTEM ;
 int avc_has_perm (int ,int ,int ,int ,int *) ;

__attribute__((used)) static int may_context_mount_sb_relabel(u32 sid,
   struct superblock_security_struct *sbsec,
   const struct cred *cred)
{
 const struct task_security_struct *tsec = cred->security;
 int rc;

 rc = avc_has_perm(tsec->sid, sbsec->sid, SECCLASS_FILESYSTEM,
     FILESYSTEM__RELABELFROM, ((void*)0));
 if (rc)
  return rc;

 rc = avc_has_perm(tsec->sid, sid, SECCLASS_FILESYSTEM,
     FILESYSTEM__RELABELTO, ((void*)0));
 return rc;
}
