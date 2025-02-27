
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int* td_retval; int td_tid; int td_proc; } ;
struct linux_sched_getaffinity_args {int len; scalar_t__ user_mask_ptr; int pid; } ;
typedef int cpuset_t ;


 int CPU_LEVEL_WHICH ;
 int CPU_WHICH_TID ;
 int EINVAL ;
 int ESRCH ;
 int PROC_UNLOCK (int ) ;
 int kern_cpuset_getaffinity (struct thread*,int ,int ,int ,int,int *) ;
 struct thread* linux_tdfind (struct thread*,int ,int) ;

int
linux_sched_getaffinity(struct thread *td,
    struct linux_sched_getaffinity_args *args)
{
 int error;
 struct thread *tdt;

 if (args->len < sizeof(cpuset_t))
  return (EINVAL);

 tdt = linux_tdfind(td, args->pid, -1);
 if (tdt == ((void*)0))
  return (ESRCH);

 PROC_UNLOCK(tdt->td_proc);

 error = kern_cpuset_getaffinity(td, CPU_LEVEL_WHICH, CPU_WHICH_TID,
     tdt->td_tid, sizeof(cpuset_t), (cpuset_t *)args->user_mask_ptr);
 if (error == 0)
  td->td_retval[0] = sizeof(cpuset_t);

 return (error);
}
