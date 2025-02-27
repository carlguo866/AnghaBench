
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcb_struct {unsigned long asn; unsigned long ptbr; } ;
struct mm_struct {unsigned long* context; scalar_t__ pgd; } ;
struct TYPE_2__ {struct pcb_struct pcb; } ;


 unsigned long HARDWARE_ASN_MASK ;
 unsigned long IDENT_ADDR ;
 unsigned long PAGE_SHIFT ;
 unsigned long __get_new_mm_context (struct mm_struct*,size_t) ;
 int __reload_thread (struct pcb_struct*) ;
 TYPE_1__* current_thread_info () ;
 size_t smp_processor_id () ;

void
__load_new_mm_context(struct mm_struct *next_mm)
{
 unsigned long mmc;
 struct pcb_struct *pcb;

 mmc = __get_new_mm_context(next_mm, smp_processor_id());
 next_mm->context[smp_processor_id()] = mmc;

 pcb = &current_thread_info()->pcb;
 pcb->asn = mmc & HARDWARE_ASN_MASK;
 pcb->ptbr = ((unsigned long) next_mm->pgd - IDENT_ADDR) >> PAGE_SHIFT;

 __reload_thread(pcb);
}
