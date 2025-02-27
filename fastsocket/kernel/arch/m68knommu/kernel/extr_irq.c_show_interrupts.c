
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct irqaction {int name; struct irqaction* next; } ;
typedef int loff_t ;
struct TYPE_4__ {TYPE_1__* chip; struct irqaction* action; } ;
struct TYPE_3__ {int name; } ;


 int NR_IRQS ;
 TYPE_2__* irq_desc ;
 int kstat_irqs (int) ;
 int seq_printf (struct seq_file*,char*,int) ;
 int seq_putc (struct seq_file*,char) ;
 int seq_puts (struct seq_file*,char*) ;

int show_interrupts(struct seq_file *p, void *v)
{
 struct irqaction *ap;
 int irq = *((loff_t *) v);

 if (irq == 0)
  seq_puts(p, "           CPU0\n");

 if (irq < NR_IRQS) {
  ap = irq_desc[irq].action;
  if (ap) {
   seq_printf(p, "%3d: ", irq);
   seq_printf(p, "%10u ", kstat_irqs(irq));
   seq_printf(p, "%14s  ", irq_desc[irq].chip->name);

   seq_printf(p, "%s", ap->name);
   for (ap = ap->next; ap; ap = ap->next)
    seq_printf(p, ", %s", ap->name);
   seq_putc(p, '\n');
  }
 }

 return 0;
}
