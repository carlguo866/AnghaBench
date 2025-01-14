
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int host_data; } ;
typedef int irq_hw_number_t ;


 int IRQ_LEVEL ;
 int handle_level_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,int ) ;
 int irq_set_probe (unsigned int) ;
 int irq_set_status_flags (unsigned int,int ) ;
 int rda_irq_chip ;

__attribute__((used)) static int rda_irq_map(struct irq_domain *d,
         unsigned int virq, irq_hw_number_t hw)
{
 irq_set_status_flags(virq, IRQ_LEVEL);
 irq_set_chip_and_handler(virq, &rda_irq_chip, handle_level_irq);
 irq_set_chip_data(virq, d->host_data);
 irq_set_probe(virq);

 return 0;
}
