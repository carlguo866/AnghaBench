
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int thread_t ;
struct task_pend_token {scalar_t__ tpt_update_sockets; } ;
typedef int spl_t ;


 int TASK_POLICY_ATTRIBUTE ;
 int TASK_POLICY_QOS_WORKQ_OVERRIDE ;
 scalar_t__ THREAD_QOS_LAST ;
 int assert (int) ;
 int proc_set_thread_policy_spinlocked (int ,int ,int ,scalar_t__,int ,struct task_pend_token*) ;
 int splsched () ;
 int splx (int ) ;
 int thread_lock (int ) ;
 int thread_policy_update_complete_unlocked (int ,struct task_pend_token*) ;
 int thread_unlock (int ) ;

void
thread_set_workq_override(thread_t thread, uint32_t qos)
{
 struct task_pend_token pend_token = {};

 assert(qos < THREAD_QOS_LAST);

 spl_t s = splsched();
 thread_lock(thread);

 proc_set_thread_policy_spinlocked(thread, TASK_POLICY_ATTRIBUTE,
   TASK_POLICY_QOS_WORKQ_OVERRIDE, qos, 0, &pend_token);

 assert(pend_token.tpt_update_sockets == 0);

 thread_unlock(thread);
 splx(s);

 thread_policy_update_complete_unlocked(thread, &pend_token);
}
