
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ sp; } ;
struct task_struct {TYPE_1__ thread; } ;
struct stacktrace_ops {scalar_t__ (* stack ) (void*,char*) ;unsigned long (* walk_stack ) (struct thread_info*,unsigned long*,unsigned long,struct stacktrace_ops const*,void*,unsigned long*,int*) ;} ;
struct pt_regs {int dummy; } ;


 int IRQ_STACK_SIZE ;
 struct task_struct* current ;
 unsigned long fixup_bp_irq_link (unsigned long,unsigned long*,unsigned long*,unsigned long*) ;
 unsigned int get_cpu () ;
 unsigned long* in_exception_stack (unsigned int const,unsigned long,unsigned int*,char**) ;
 scalar_t__ in_irq_stack (unsigned long*,unsigned long*,unsigned long*) ;
 int irq_stack_ptr ;
 scalar_t__ per_cpu (int ,unsigned int const) ;
 int put_cpu () ;
 unsigned long stack_frame (struct task_struct*,struct pt_regs*) ;
 scalar_t__ stub1 (void*,char*) ;
 unsigned long stub2 (struct thread_info*,unsigned long*,unsigned long,struct stacktrace_ops const*,void*,unsigned long*,int*) ;
 scalar_t__ stub3 (void*,char*) ;
 scalar_t__ stub4 (void*,char*) ;
 unsigned long stub5 (struct thread_info*,unsigned long*,unsigned long,struct stacktrace_ops const*,void*,unsigned long*,int*) ;
 scalar_t__ stub6 (void*,char*) ;
 unsigned long stub7 (struct thread_info*,unsigned long*,unsigned long,struct stacktrace_ops const*,void*,unsigned long*,int*) ;
 struct thread_info* task_thread_info (struct task_struct*) ;

void dump_trace(struct task_struct *task, struct pt_regs *regs,
  unsigned long *stack,
  const struct stacktrace_ops *ops, void *data)
{
 const unsigned cpu = get_cpu();
 unsigned long *irq_stack_end =
  (unsigned long *)per_cpu(irq_stack_ptr, cpu);
 unsigned used = 0;
 struct thread_info *tinfo;
 int graph = 0;
 unsigned long bp;

 if (!task)
  task = current;

 if (!stack) {
  unsigned long dummy;
  stack = &dummy;
  if (task && task != current)
   stack = (unsigned long *)task->thread.sp;
 }

 bp = stack_frame(task, regs);





 tinfo = task_thread_info(task);
 for (;;) {
  char *id;
  unsigned long *estack_end;
  estack_end = in_exception_stack(cpu, (unsigned long)stack,
      &used, &id);

  if (estack_end) {
   if (ops->stack(data, id) < 0)
    break;

   bp = ops->walk_stack(tinfo, stack, bp, ops,
          data, estack_end, &graph);
   ops->stack(data, "<EOE>");





   stack = (unsigned long *) estack_end[-2];
   continue;
  }
  if (irq_stack_end) {
   unsigned long *irq_stack;
   irq_stack = irq_stack_end -
    (IRQ_STACK_SIZE - 64) / sizeof(*irq_stack);

   if (in_irq_stack(stack, irq_stack, irq_stack_end)) {
    if (ops->stack(data, "IRQ") < 0)
     break;
    bp = ops->walk_stack(tinfo, stack, bp,
     ops, data, irq_stack_end, &graph);





    stack = (unsigned long *) (irq_stack_end[-1]);
    bp = fixup_bp_irq_link(bp, stack, irq_stack,
             irq_stack_end);
    irq_stack_end = ((void*)0);
    ops->stack(data, "EOI");
    continue;
   }
  }
  break;
 }




 bp = ops->walk_stack(tinfo, stack, bp, ops, data, ((void*)0), &graph);
 put_cpu();
}
