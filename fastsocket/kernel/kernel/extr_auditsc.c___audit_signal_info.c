
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uid_t ;
struct task_struct {scalar_t__ tgid; int loginuid; int comm; int pid; struct audit_context* audit_context; } ;
struct audit_context {scalar_t__ target_pid; void* aux_pids; int target_comm; int target_sid; void* target_sessionid; void* target_uid; void* target_auid; } ;
struct TYPE_2__ {void* next; int type; } ;
struct audit_aux_data_pids {size_t pid_count; scalar_t__* target_pid; int * target_comm; int * target_sid; void** target_sessionid; void** target_uid; void** target_auid; TYPE_1__ d; } ;


 size_t AUDIT_AUX_PIDS ;
 int AUDIT_OBJ_PID ;
 int BUG_ON (int) ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int SIGHUP ;
 int SIGTERM ;
 int SIGUSR1 ;
 int SIGUSR2 ;
 int TASK_COMM_LEN ;
 scalar_t__ audit_dummy_context () ;
 void* audit_get_loginuid (struct task_struct*) ;
 void* audit_get_sessionid (struct task_struct*) ;
 scalar_t__ audit_pid ;
 int audit_sig_pid ;
 int audit_sig_sid ;
 int audit_sig_uid ;
 int audit_signals ;
 struct task_struct* current ;
 void* current_uid () ;
 struct audit_aux_data_pids* kzalloc (int,int ) ;
 int memcpy (int ,int ,int ) ;
 int security_task_getsecid (struct task_struct*,int *) ;
 void* task_uid (struct task_struct*) ;

int __audit_signal_info(int sig, struct task_struct *t)
{
 struct audit_aux_data_pids *axp;
 struct task_struct *tsk = current;
 struct audit_context *ctx = tsk->audit_context;
 uid_t uid = current_uid(), t_uid = task_uid(t);

 if (audit_pid && t->tgid == audit_pid) {
  if (sig == SIGTERM || sig == SIGHUP || sig == SIGUSR1 || sig == SIGUSR2) {
   audit_sig_pid = tsk->pid;
   if (tsk->loginuid != -1)
    audit_sig_uid = tsk->loginuid;
   else
    audit_sig_uid = uid;
   security_task_getsecid(tsk, &audit_sig_sid);
  }
  if (!audit_signals || audit_dummy_context())
   return 0;
 }



 if (!ctx->target_pid) {
  ctx->target_pid = t->tgid;
  ctx->target_auid = audit_get_loginuid(t);
  ctx->target_uid = t_uid;
  ctx->target_sessionid = audit_get_sessionid(t);
  security_task_getsecid(t, &ctx->target_sid);
  memcpy(ctx->target_comm, t->comm, TASK_COMM_LEN);
  return 0;
 }

 axp = (void *)ctx->aux_pids;
 if (!axp || axp->pid_count == AUDIT_AUX_PIDS) {
  axp = kzalloc(sizeof(*axp), GFP_ATOMIC);
  if (!axp)
   return -ENOMEM;

  axp->d.type = AUDIT_OBJ_PID;
  axp->d.next = ctx->aux_pids;
  ctx->aux_pids = (void *)axp;
 }
 BUG_ON(axp->pid_count >= AUDIT_AUX_PIDS);

 axp->target_pid[axp->pid_count] = t->tgid;
 axp->target_auid[axp->pid_count] = audit_get_loginuid(t);
 axp->target_uid[axp->pid_count] = t_uid;
 axp->target_sessionid[axp->pid_count] = audit_get_sessionid(t);
 security_task_getsecid(t, &axp->target_sid[axp->pid_count]);
 memcpy(axp->target_comm[axp->pid_count], t->comm, TASK_COMM_LEN);
 axp->pid_count++;

 return 0;
}
