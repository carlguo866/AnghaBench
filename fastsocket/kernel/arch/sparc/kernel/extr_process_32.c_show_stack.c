
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {int dummy; } ;
struct task_struct {int dummy; } ;
struct reg_window32 {unsigned long* ins; } ;


 int PAGE_SIZE ;
 scalar_t__ current_thread_info () ;
 int printk (char*,...) ;
 scalar_t__ task_stack_page (struct task_struct*) ;

void show_stack(struct task_struct *tsk, unsigned long *_ksp)
{
 unsigned long pc, fp;
 unsigned long task_base;
 struct reg_window32 *rw;
 int count = 0;

 if (tsk != ((void*)0))
  task_base = (unsigned long) task_stack_page(tsk);
 else
  task_base = (unsigned long) current_thread_info();

 fp = (unsigned long) _ksp;
 do {

  if (fp < (task_base + sizeof(struct thread_info)) ||
      fp >= (task_base + (PAGE_SIZE << 1)))
   break;
  rw = (struct reg_window32 *) fp;
  pc = rw->ins[7];
  printk("[%08lx : ", pc);
  printk("%pS ] ", (void *) pc);
  fp = rw->ins[6];
 } while (++count < 16);
 printk("\n");
}
