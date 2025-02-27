
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int suseconds_t ;
struct timeval {long tv_sec; int tv_usec; } ;
struct timespec {int dummy; } ;
struct thread {int* td_retval; } ;
struct linux_rt_sigtimedwait_args {int sigsetsize; int ptr; scalar_t__ timeout; scalar_t__ mask; } ;
typedef int sigset_t ;
typedef int ltv ;
typedef int lset ;
typedef int linfo ;
struct TYPE_8__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
typedef TYPE_1__ l_timeval ;
typedef TYPE_1__ l_sigset_t ;
typedef int l_siginfo_t ;
struct TYPE_9__ {int ksi_signo; } ;
typedef TYPE_3__ ksiginfo_t ;


 int EINVAL ;
 int TIMEVAL_TO_TIMESPEC (struct timeval*,struct timespec*) ;
 int bsd_to_linux_signal (int ) ;
 int copyin (scalar_t__,TYPE_1__*,int) ;
 int copyout (int *,int ,int) ;
 scalar_t__ itimerfix (struct timeval*) ;
 int kern_sigtimedwait (struct thread*,int ,TYPE_3__*,struct timespec*) ;
 int ksiginfo_to_lsiginfo (TYPE_3__*,int *,int) ;
 int linux_to_bsd_sigset (TYPE_1__*,int *) ;
 int memset (int *,int ,int) ;
 int timevalclear (struct timeval*) ;

int
linux_rt_sigtimedwait(struct thread *td,
 struct linux_rt_sigtimedwait_args *args)
{
 int error, sig;
 l_timeval ltv;
 struct timeval tv;
 struct timespec ts, *tsa;
 l_sigset_t lset;
 sigset_t bset;
 l_siginfo_t linfo;
 ksiginfo_t info;

 if (args->sigsetsize != sizeof(l_sigset_t))
  return (EINVAL);

 if ((error = copyin(args->mask, &lset, sizeof(lset))))
  return (error);
 linux_to_bsd_sigset(&lset, &bset);

 tsa = ((void*)0);
 if (args->timeout) {
  if ((error = copyin(args->timeout, &ltv, sizeof(ltv))))
   return (error);
  tv.tv_sec = (long)ltv.tv_sec;
  tv.tv_usec = (suseconds_t)ltv.tv_usec;
  if (itimerfix(&tv)) {




   tv.tv_sec += tv.tv_usec / 1000000;
   tv.tv_usec %= 1000000;
   if (tv.tv_usec < 0) {
    tv.tv_sec -= 1;
    tv.tv_usec += 1000000;
   }
   if (tv.tv_sec < 0)
    timevalclear(&tv);
  }
  TIMEVAL_TO_TIMESPEC(&tv, &ts);
  tsa = &ts;
 }
 error = kern_sigtimedwait(td, bset, &info, tsa);
 if (error)
  return (error);

 sig = bsd_to_linux_signal(info.ksi_signo);

 if (args->ptr) {
  memset(&linfo, 0, sizeof(linfo));
  ksiginfo_to_lsiginfo(&info, &linfo, sig);
  error = copyout(&linfo, args->ptr, sizeof(linfo));
 }
 if (error == 0)
  td->td_retval[0] = sig;

 return (error);
}
