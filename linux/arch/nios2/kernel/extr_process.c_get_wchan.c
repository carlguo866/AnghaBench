
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ksp; } ;
struct task_struct {scalar_t__ state; TYPE_1__ thread; } ;
struct switch_stack {unsigned long fp; } ;


 scalar_t__ TASK_RUNNING ;
 struct task_struct* current ;
 int in_sched_functions (unsigned long) ;

unsigned long get_wchan(struct task_struct *p)
{
 unsigned long fp, pc;
 unsigned long stack_page;
 int count = 0;

 if (!p || p == current || p->state == TASK_RUNNING)
  return 0;

 stack_page = (unsigned long)p;
 fp = ((struct switch_stack *)p->thread.ksp)->fp;
 do {
  if (fp < stack_page+sizeof(struct task_struct) ||
   fp >= 8184+stack_page)
   return 0;
  pc = ((unsigned long *)fp)[1];
  if (!in_sched_functions(pc))
   return pc;
  fp = *(unsigned long *) fp;
 } while (count++ < 16);
 return 0;
}
