
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;
struct thread {scalar_t__ td_lend_user_pri; scalar_t__ td_user_pri; scalar_t__ td_base_user_pri; } ;



void
sched_user_prio(struct thread *td, u_char prio)
{

 td->td_base_user_pri = prio;
 if (td->td_lend_user_pri <= prio)
  return;
 td->td_user_pri = prio;
}
