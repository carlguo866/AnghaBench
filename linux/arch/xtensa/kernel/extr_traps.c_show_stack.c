
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int kstack_depth_to_print ;
 scalar_t__ kstack_end (unsigned long*) ;
 int pr_cont (char*,...) ;
 int pr_info (char*) ;
 int show_trace (struct task_struct*,unsigned long*) ;
 unsigned long* stack_pointer (struct task_struct*) ;

void show_stack(struct task_struct *task, unsigned long *sp)
{
 int i = 0;
 unsigned long *stack;

 if (!sp)
  sp = stack_pointer(task);
 stack = sp;

 pr_info("Stack:\n");

 for (i = 0; i < kstack_depth_to_print; i++) {
  if (kstack_end(sp))
   break;
  pr_cont(" %08lx", *sp++);
  if (i % 8 == 7)
   pr_cont("\n");
 }
 show_trace(task, stack);
}
