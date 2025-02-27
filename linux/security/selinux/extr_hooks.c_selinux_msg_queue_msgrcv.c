
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct task_struct {int dummy; } ;
struct msg_security_struct {int sid; } ;
struct msg_msg {int dummy; } ;
struct kern_ipc_perm {int key; } ;
struct ipc_security_struct {int sid; } ;
struct TYPE_2__ {int ipc_id; } ;
struct common_audit_data {TYPE_1__ u; int type; } ;


 int LSM_AUDIT_DATA_IPC ;
 int MSGQ__READ ;
 int MSG__RECEIVE ;
 int SECCLASS_MSG ;
 int SECCLASS_MSGQ ;
 int avc_has_perm (int *,int ,int ,int ,int ,struct common_audit_data*) ;
 struct ipc_security_struct* selinux_ipc (struct kern_ipc_perm*) ;
 struct msg_security_struct* selinux_msg_msg (struct msg_msg*) ;
 int selinux_state ;
 int task_sid (struct task_struct*) ;

__attribute__((used)) static int selinux_msg_queue_msgrcv(struct kern_ipc_perm *msq, struct msg_msg *msg,
        struct task_struct *target,
        long type, int mode)
{
 struct ipc_security_struct *isec;
 struct msg_security_struct *msec;
 struct common_audit_data ad;
 u32 sid = task_sid(target);
 int rc;

 isec = selinux_ipc(msq);
 msec = selinux_msg_msg(msg);

 ad.type = LSM_AUDIT_DATA_IPC;
 ad.u.ipc_id = msq->key;

 rc = avc_has_perm(&selinux_state,
     sid, isec->sid,
     SECCLASS_MSGQ, MSGQ__READ, &ad);
 if (!rc)
  rc = avc_has_perm(&selinux_state,
      sid, msec->sid,
      SECCLASS_MSG, MSG__RECEIVE, &ad);
 return rc;
}
