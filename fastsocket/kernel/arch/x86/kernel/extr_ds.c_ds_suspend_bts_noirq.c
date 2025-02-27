
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {unsigned long debugctlmsr; } ;
struct task_struct {TYPE_3__ thread; } ;
struct TYPE_5__ {TYPE_1__* context; } ;
struct bts_tracer {TYPE_2__ ds; scalar_t__ flags; } ;
struct TYPE_4__ {int cpu; struct task_struct* task; } ;


 unsigned long BTS_CONTROL ;
 int EPERM ;
 unsigned long get_debugctlmsr () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int smp_processor_id () ;
 int update_debugctlmsr (unsigned long) ;
 int update_task_debugctlmsr (struct task_struct*,unsigned long) ;

int ds_suspend_bts_noirq(struct bts_tracer *tracer)
{
 struct task_struct *task;
 unsigned long debugctlmsr, irq;
 int cpu, error = 0;

 if (!tracer)
  return 0;

 tracer->flags = 0;

 task = tracer->ds.context->task;
 cpu = tracer->ds.context->cpu;

 local_irq_save(irq);

 error = -EPERM;
 if (!task && (cpu != smp_processor_id()))
  goto out;

 debugctlmsr = (task ?
         task->thread.debugctlmsr :
         get_debugctlmsr());
 debugctlmsr &= ~BTS_CONTROL;

 if (task)
  update_task_debugctlmsr(task, debugctlmsr);
 else
  update_debugctlmsr(debugctlmsr);

 error = 0;
 out:
 local_irq_restore(irq);
 return error;
}
