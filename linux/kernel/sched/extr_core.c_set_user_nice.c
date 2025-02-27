
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int prio; void* static_prio; } ;
struct rq_flags {int dummy; } ;
struct rq {int dummy; } ;


 int DEQUEUE_NOCLOCK ;
 int DEQUEUE_SAVE ;
 int ENQUEUE_NOCLOCK ;
 int ENQUEUE_RESTORE ;
 long MAX_NICE ;
 long MIN_NICE ;
 void* NICE_TO_PRIO (long) ;
 int dequeue_task (struct rq*,struct task_struct*,int) ;
 int effective_prio (struct task_struct*) ;
 int enqueue_task (struct rq*,struct task_struct*,int) ;
 int put_prev_task (struct rq*,struct task_struct*) ;
 int resched_curr (struct rq*) ;
 int set_load_weight (struct task_struct*,int) ;
 int set_next_task (struct rq*,struct task_struct*) ;
 int task_current (struct rq*,struct task_struct*) ;
 scalar_t__ task_has_dl_policy (struct task_struct*) ;
 scalar_t__ task_has_rt_policy (struct task_struct*) ;
 long task_nice (struct task_struct*) ;
 int task_on_rq_queued (struct task_struct*) ;
 struct rq* task_rq_lock (struct task_struct*,struct rq_flags*) ;
 int task_rq_unlock (struct rq*,struct task_struct*,struct rq_flags*) ;
 scalar_t__ task_running (struct rq*,struct task_struct*) ;
 int update_rq_clock (struct rq*) ;

void set_user_nice(struct task_struct *p, long nice)
{
 bool queued, running;
 int old_prio, delta;
 struct rq_flags rf;
 struct rq *rq;

 if (task_nice(p) == nice || nice < MIN_NICE || nice > MAX_NICE)
  return;




 rq = task_rq_lock(p, &rf);
 update_rq_clock(rq);







 if (task_has_dl_policy(p) || task_has_rt_policy(p)) {
  p->static_prio = NICE_TO_PRIO(nice);
  goto out_unlock;
 }
 queued = task_on_rq_queued(p);
 running = task_current(rq, p);
 if (queued)
  dequeue_task(rq, p, DEQUEUE_SAVE | DEQUEUE_NOCLOCK);
 if (running)
  put_prev_task(rq, p);

 p->static_prio = NICE_TO_PRIO(nice);
 set_load_weight(p, 1);
 old_prio = p->prio;
 p->prio = effective_prio(p);
 delta = p->prio - old_prio;

 if (queued) {
  enqueue_task(rq, p, ENQUEUE_RESTORE | ENQUEUE_NOCLOCK);




  if (delta < 0 || (delta > 0 && task_running(rq, p)))
   resched_curr(rq);
 }
 if (running)
  set_next_task(rq, p);
out_unlock:
 task_rq_unlock(rq, p, &rf);
}
