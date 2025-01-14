
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct thread {int dummy; } ;
struct proc {int dummy; } ;
struct TYPE_8__ {scalar_t__ ksi_errno; int ksi_signo; } ;
struct TYPE_9__ {scalar_t__ sigev_notify; } ;
struct TYPE_7__ {int it_interval; int it_value; } ;
struct itimer {scalar_t__ it_overrun; TYPE_2__ it_ksi; TYPE_3__ it_sigev; int it_callout; TYPE_1__ it_time; struct proc* it_proc; } ;


 scalar_t__ ERANGE ;
 scalar_t__ INT_MAX ;
 int ITIMER_LOCK (struct itimer*) ;
 int ITIMER_UNLOCK (struct itimer*) ;
 int KSI_ONQ (TYPE_2__*) ;
 int PROC_UNLOCK (struct proc*) ;
 scalar_t__ SIGEV_SIGNAL ;
 scalar_t__ SIGEV_THREAD_ID ;
 int callout_stop (int *) ;
 int ksiginfo_set_sigev (TYPE_2__*,TYPE_3__*) ;
 scalar_t__ sigev_findtd (struct proc*,TYPE_3__*,struct thread**) ;
 int tdsendsignal (struct proc*,struct thread*,int ,TYPE_2__*) ;
 int timespecclear (int *) ;

void
itimer_fire(struct itimer *it)
{
 struct proc *p = it->it_proc;
 struct thread *td;

 if (it->it_sigev.sigev_notify == SIGEV_SIGNAL ||
     it->it_sigev.sigev_notify == SIGEV_THREAD_ID) {
  if (sigev_findtd(p, &it->it_sigev, &td) != 0) {
   ITIMER_LOCK(it);
   timespecclear(&it->it_time.it_value);
   timespecclear(&it->it_time.it_interval);
   callout_stop(&it->it_callout);
   ITIMER_UNLOCK(it);
   return;
  }
  if (!KSI_ONQ(&it->it_ksi)) {
   it->it_ksi.ksi_errno = 0;
   ksiginfo_set_sigev(&it->it_ksi, &it->it_sigev);
   tdsendsignal(p, td, it->it_ksi.ksi_signo, &it->it_ksi);
  } else {
   if (it->it_overrun < INT_MAX)
    it->it_overrun++;
   else
    it->it_ksi.ksi_errno = ERANGE;
  }
  PROC_UNLOCK(p);
 }
}
