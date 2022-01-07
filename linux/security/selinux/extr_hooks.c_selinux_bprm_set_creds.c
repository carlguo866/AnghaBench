
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct task_security_struct {scalar_t__ sid; scalar_t__ osid; scalar_t__ exec_sid; scalar_t__ sockcreate_sid; scalar_t__ keycreate_sid; scalar_t__ create_sid; } ;
struct linux_binprm {int unsafe; int secureexec; int per_clear; int file; int cred; scalar_t__ called_set_creds; } ;
struct inode_security_struct {scalar_t__ sid; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int file; } ;
struct common_audit_data {TYPE_1__ u; int type; } ;


 int EPERM ;
 int FILE__ENTRYPOINT ;
 int FILE__EXECUTE_NO_TRANS ;
 int LSM_AUDIT_DATA_FILE ;
 int LSM_UNSAFE_PTRACE ;
 int LSM_UNSAFE_SHARE ;
 int PER_CLEAR_ON_SETID ;
 int PROCESS__NOATSECURE ;
 int PROCESS__PTRACE ;
 int PROCESS__SHARE ;
 int PROCESS__TRANSITION ;
 int SECCLASS_FILE ;
 int SECCLASS_PROCESS ;
 int avc_has_perm (int *,scalar_t__,scalar_t__,int ,int ,struct common_audit_data*) ;
 int check_nnp_nosuid (struct linux_binprm*,struct task_security_struct const*,struct task_security_struct*) ;
 int current_cred () ;
 struct inode* file_inode (int ) ;
 struct inode_security_struct* inode_security (struct inode*) ;
 scalar_t__ ptrace_parent_sid () ;
 int security_transition_sid (int *,scalar_t__,scalar_t__,int ,int *,scalar_t__*) ;
 void* selinux_cred (int ) ;
 int selinux_state ;

__attribute__((used)) static int selinux_bprm_set_creds(struct linux_binprm *bprm)
{
 const struct task_security_struct *old_tsec;
 struct task_security_struct *new_tsec;
 struct inode_security_struct *isec;
 struct common_audit_data ad;
 struct inode *inode = file_inode(bprm->file);
 int rc;



 if (bprm->called_set_creds)
  return 0;

 old_tsec = selinux_cred(current_cred());
 new_tsec = selinux_cred(bprm->cred);
 isec = inode_security(inode);


 new_tsec->sid = old_tsec->sid;
 new_tsec->osid = old_tsec->sid;


 new_tsec->create_sid = 0;
 new_tsec->keycreate_sid = 0;
 new_tsec->sockcreate_sid = 0;

 if (old_tsec->exec_sid) {
  new_tsec->sid = old_tsec->exec_sid;

  new_tsec->exec_sid = 0;


  rc = check_nnp_nosuid(bprm, old_tsec, new_tsec);
  if (rc)
   return rc;
 } else {

  rc = security_transition_sid(&selinux_state, old_tsec->sid,
          isec->sid, SECCLASS_PROCESS, ((void*)0),
          &new_tsec->sid);
  if (rc)
   return rc;





  rc = check_nnp_nosuid(bprm, old_tsec, new_tsec);
  if (rc)
   new_tsec->sid = old_tsec->sid;
 }

 ad.type = LSM_AUDIT_DATA_FILE;
 ad.u.file = bprm->file;

 if (new_tsec->sid == old_tsec->sid) {
  rc = avc_has_perm(&selinux_state,
      old_tsec->sid, isec->sid,
      SECCLASS_FILE, FILE__EXECUTE_NO_TRANS, &ad);
  if (rc)
   return rc;
 } else {

  rc = avc_has_perm(&selinux_state,
      old_tsec->sid, new_tsec->sid,
      SECCLASS_PROCESS, PROCESS__TRANSITION, &ad);
  if (rc)
   return rc;

  rc = avc_has_perm(&selinux_state,
      new_tsec->sid, isec->sid,
      SECCLASS_FILE, FILE__ENTRYPOINT, &ad);
  if (rc)
   return rc;


  if (bprm->unsafe & LSM_UNSAFE_SHARE) {
   rc = avc_has_perm(&selinux_state,
       old_tsec->sid, new_tsec->sid,
       SECCLASS_PROCESS, PROCESS__SHARE,
       ((void*)0));
   if (rc)
    return -EPERM;
  }



  if (bprm->unsafe & LSM_UNSAFE_PTRACE) {
   u32 ptsid = ptrace_parent_sid();
   if (ptsid != 0) {
    rc = avc_has_perm(&selinux_state,
        ptsid, new_tsec->sid,
        SECCLASS_PROCESS,
        PROCESS__PTRACE, ((void*)0));
    if (rc)
     return -EPERM;
   }
  }


  bprm->per_clear |= PER_CLEAR_ON_SETID;




  rc = avc_has_perm(&selinux_state,
      old_tsec->sid, new_tsec->sid,
      SECCLASS_PROCESS, PROCESS__NOATSECURE,
      ((void*)0));
  bprm->secureexec |= !!rc;
 }

 return 0;
}
