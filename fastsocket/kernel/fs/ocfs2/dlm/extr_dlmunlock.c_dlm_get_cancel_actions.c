
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lockstatus {int dummy; } ;
struct dlm_lock_resource {int granted; int converting; int blocked; } ;
struct dlm_lock {int dummy; } ;
struct dlm_ctxt {int dummy; } ;
typedef enum dlm_status { ____Placeholder_dlm_status } dlm_status ;


 int DLM_CANCELGRANT ;
 int DLM_IVLOCKID ;
 int DLM_NORMAL ;
 int DLM_UNLOCK_CALL_AST ;
 int DLM_UNLOCK_CLEAR_CONVERT_TYPE ;
 int DLM_UNLOCK_REGRANT_LOCK ;
 int DLM_UNLOCK_REMOVE_LOCK ;
 int ML_ERROR ;
 scalar_t__ dlm_lock_on_list (int *,struct dlm_lock*) ;
 int mlog (int ,char*) ;

__attribute__((used)) static enum dlm_status dlm_get_cancel_actions(struct dlm_ctxt *dlm,
           struct dlm_lock_resource *res,
           struct dlm_lock *lock,
           struct dlm_lockstatus *lksb,
           int *actions)
{
 enum dlm_status status;

 if (dlm_lock_on_list(&res->blocked, lock)) {

  status = DLM_NORMAL;
  *actions = (DLM_UNLOCK_CALL_AST |
       DLM_UNLOCK_REMOVE_LOCK);
 } else if (dlm_lock_on_list(&res->converting, lock)) {

  status = DLM_NORMAL;
  *actions = (DLM_UNLOCK_CALL_AST |
       DLM_UNLOCK_REMOVE_LOCK |
       DLM_UNLOCK_REGRANT_LOCK |
       DLM_UNLOCK_CLEAR_CONVERT_TYPE);
 } else if (dlm_lock_on_list(&res->granted, lock)) {

  status = DLM_CANCELGRANT;
  *actions = DLM_UNLOCK_CALL_AST;
 } else {
  mlog(ML_ERROR, "lock to cancel is not on any list!\n");
  status = DLM_IVLOCKID;
  *actions = 0;
 }
 return status;
}
