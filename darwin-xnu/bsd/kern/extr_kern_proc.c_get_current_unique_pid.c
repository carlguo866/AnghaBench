
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_1__* proc_t ;
struct TYPE_3__ {int p_uniqueid; } ;


 TYPE_1__* current_proc () ;

uint64_t
get_current_unique_pid(void)
{
 proc_t p = current_proc();

 if (p)
  return p->p_uniqueid;
 else
  return 0;
}
