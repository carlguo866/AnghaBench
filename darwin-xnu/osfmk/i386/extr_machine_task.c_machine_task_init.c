
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_5__ {scalar_t__ xstate; scalar_t__ i386_ldt; scalar_t__ uexc_handler; scalar_t__ uexc_range_size; scalar_t__ uexc_range_start; } ;


 TYPE_1__* TASK_NULL ;
 scalar_t__ UNDEFINED ;
 int assert (int) ;
 scalar_t__ fpu_default ;
 scalar_t__ user_ldt_copy (scalar_t__) ;

void
machine_task_init(task_t new_task,
    task_t parent_task,
    boolean_t inherit_memory)
{
 new_task->uexc_range_start = 0;
 new_task->uexc_range_size = 0;
 new_task->uexc_handler = 0;

 new_task->i386_ldt = 0;

 if (parent_task != TASK_NULL) {
  if (inherit_memory && parent_task->i386_ldt)
   new_task->i386_ldt = user_ldt_copy(parent_task->i386_ldt);
  new_task->xstate = parent_task->xstate;
 } else {
  assert(fpu_default != UNDEFINED);
  new_task->xstate = fpu_default;
 }
}
