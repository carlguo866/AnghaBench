
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct rctl_get_racct_args {int dummy; } ;


 int ENOSYS ;

int
sys_rctl_get_racct(struct thread *td, struct rctl_get_racct_args *uap)
{

 return (ENOSYS);
}
