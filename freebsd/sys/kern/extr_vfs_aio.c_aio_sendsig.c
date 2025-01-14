
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct thread {int dummy; } ;
struct sigevent {int dummy; } ;
struct proc {int dummy; } ;
struct TYPE_6__ {int ksi_flags; int ksi_signo; int ksi_code; } ;
typedef TYPE_1__ ksiginfo_t ;


 int KSI_EXT ;
 int KSI_INS ;
 int KSI_ONQ (TYPE_1__*) ;
 int PROC_UNLOCK (struct proc*) ;
 int SI_ASYNCIO ;
 int ksiginfo_set_sigev (TYPE_1__*,struct sigevent*) ;
 int sigev_findtd (struct proc*,struct sigevent*,struct thread**) ;
 int tdsendsignal (struct proc*,struct thread*,int ,TYPE_1__*) ;

__attribute__((used)) static int
aio_sendsig(struct proc *p, struct sigevent *sigev, ksiginfo_t *ksi)
{
 struct thread *td;
 int error;

 error = sigev_findtd(p, sigev, &td);
 if (error)
  return (error);
 if (!KSI_ONQ(ksi)) {
  ksiginfo_set_sigev(ksi, sigev);
  ksi->ksi_code = SI_ASYNCIO;
  ksi->ksi_flags |= KSI_EXT | KSI_INS;
  tdsendsignal(p, td, ksi->ksi_signo, ksi);
 }
 PROC_UNLOCK(p);
 return (error);
}
