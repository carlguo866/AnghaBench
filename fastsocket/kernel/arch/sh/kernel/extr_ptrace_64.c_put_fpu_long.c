
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int hard; } ;
struct TYPE_3__ {TYPE_2__ fpu; } ;
struct task_struct {TYPE_1__ thread; } ;
struct pt_regs {int sr; } ;


 int SR_FD ;
 int THREAD_SIZE ;
 int disable_fpu () ;
 int enable_fpu () ;
 int fpinit (int *) ;
 struct task_struct* last_task_used_math ;
 int save_fpu (struct task_struct*,struct pt_regs*) ;
 int set_stopped_child_used_math (struct task_struct*) ;
 int tsk_used_math (struct task_struct*) ;

__attribute__((used)) static inline int
put_fpu_long(struct task_struct *task, unsigned long addr, unsigned long data)
{
 struct pt_regs *regs;

 regs = (struct pt_regs*)((unsigned char *)task + THREAD_SIZE) - 1;

 if (!tsk_used_math(task)) {
  fpinit(&task->thread.fpu.hard);
  set_stopped_child_used_math(task);
 } else if (last_task_used_math == task) {
  enable_fpu();
  save_fpu(task, regs);
  disable_fpu();
  last_task_used_math = 0;
  regs->sr |= SR_FD;
 }

 ((long *)&task->thread.fpu)[addr / sizeof(unsigned long)] = data;
 return 0;
}
