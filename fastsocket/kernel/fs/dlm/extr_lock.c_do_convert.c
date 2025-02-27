
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int res_name; int res_ls; } ;
struct dlm_lkb {int lkb_rqmode; int lkb_grmode; int lkb_status; int lkb_nodeid; int lkb_id; } ;


 int DLM_LKSTS_CONVERT ;
 int DLM_LOCK_IV ;
 int EAGAIN ;
 int EDEADLK ;
 int EINPROGRESS ;
 scalar_t__ _can_be_granted (struct dlm_rsb*,struct dlm_lkb*,int,int ) ;
 int add_lkb (struct dlm_rsb*,struct dlm_lkb*,int ) ;
 int add_timeout (struct dlm_lkb*) ;
 scalar_t__ can_be_granted (struct dlm_rsb*,struct dlm_lkb*,int,int ,int*) ;
 scalar_t__ can_be_queued (struct dlm_lkb*) ;
 int del_lkb (struct dlm_rsb*,struct dlm_lkb*) ;
 int grant_lock (struct dlm_rsb*,struct dlm_lkb*) ;
 int grant_pending_convert (struct dlm_rsb*,int ,int *) ;
 scalar_t__ is_demoted (struct dlm_lkb*) ;
 int log_debug (int ,char*,int ,int ,int ,int ,int ,int ) ;
 int queue_cast (struct dlm_rsb*,struct dlm_lkb*,int) ;
 int revert_lock (struct dlm_rsb*,struct dlm_lkb*) ;

__attribute__((used)) static int do_convert(struct dlm_rsb *r, struct dlm_lkb *lkb)
{
 int error = 0;
 int deadlk = 0;



 if (can_be_granted(r, lkb, 1, 0, &deadlk)) {
  grant_lock(r, lkb);
  queue_cast(r, lkb, 0);
  goto out;
 }





 if (deadlk) {

  log_debug(r->res_ls, "deadlock %x node %d sts%d g%d r%d %s",
     lkb->lkb_id, lkb->lkb_nodeid, lkb->lkb_status,
     lkb->lkb_grmode, lkb->lkb_rqmode, r->res_name);
  revert_lock(r, lkb);
  queue_cast(r, lkb, -EDEADLK);
  error = -EDEADLK;
  goto out;
 }







 if (is_demoted(lkb)) {
  grant_pending_convert(r, DLM_LOCK_IV, ((void*)0));
  if (_can_be_granted(r, lkb, 1, 0)) {
   grant_lock(r, lkb);
   queue_cast(r, lkb, 0);
   goto out;
  }

 }

 if (can_be_queued(lkb)) {
  error = -EINPROGRESS;
  del_lkb(r, lkb);
  add_lkb(r, lkb, DLM_LKSTS_CONVERT);
  add_timeout(lkb);
  goto out;
 }

 error = -EAGAIN;
 queue_cast(r, lkb, -EAGAIN);
 out:
 return error;
}
