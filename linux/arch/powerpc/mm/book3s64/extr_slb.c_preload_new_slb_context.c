
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_info {scalar_t__ slb_preload_nr; } ;
struct mm_struct {unsigned long start_brk; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 scalar_t__ SLB_PRELOAD_NR ;
 int WARN_ON (int ) ;
 TYPE_1__* current ;
 struct thread_info* current_thread_info () ;
 int hard_irq_disable () ;
 int irqs_disabled () ;
 int is_kernel_addr (unsigned long) ;
 int local_irq_enable () ;
 scalar_t__ preload_add (struct thread_info*,unsigned long) ;
 int slb_allocate_user (struct mm_struct*,unsigned long) ;

void preload_new_slb_context(unsigned long start, unsigned long sp)
{
 struct thread_info *ti = current_thread_info();
 struct mm_struct *mm = current->mm;
 unsigned long heap = mm->start_brk;

 WARN_ON(irqs_disabled());


 if (ti->slb_preload_nr + 3 > SLB_PRELOAD_NR)
  return;

 hard_irq_disable();


 if (!is_kernel_addr(start)) {
  if (preload_add(ti, start))
   slb_allocate_user(mm, start);
 }


 if (!is_kernel_addr(sp)) {
  if (preload_add(ti, sp))
   slb_allocate_user(mm, sp);
 }


 if (heap && !is_kernel_addr(heap)) {
  if (preload_add(ti, heap))
   slb_allocate_user(mm, heap);
 }


 asm volatile("isync" : : : "memory");

 local_irq_enable();
}
