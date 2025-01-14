
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct thread {scalar_t__ td_user_pri; scalar_t__ td_priority; int td_flags; int td_base_user_pri; int td_lend_user_pri; } ;


 int MA_OWNED ;
 int TDF_NEEDRESCHED ;
 int THREAD_LOCK_ASSERT (struct thread*,int ) ;
 scalar_t__ min (int ,int ) ;
 int sched_prio (struct thread*,scalar_t__) ;

void
sched_lend_user_prio(struct thread *td, u_char prio)
{

 THREAD_LOCK_ASSERT(td, MA_OWNED);
 td->td_lend_user_pri = prio;
 td->td_user_pri = min(prio, td->td_base_user_pri);
 if (td->td_priority > td->td_user_pri)
  sched_prio(td, td->td_user_pri);
 else if (td->td_priority != td->td_user_pri)
  td->td_flags |= TDF_NEEDRESCHED;
}
