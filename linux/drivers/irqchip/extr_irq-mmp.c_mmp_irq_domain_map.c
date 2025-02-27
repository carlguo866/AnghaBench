
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
typedef int irq_hw_number_t ;


 int handle_level_irq ;
 int icu_irq_chip ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;

__attribute__((used)) static int mmp_irq_domain_map(struct irq_domain *d, unsigned int irq,
         irq_hw_number_t hw)
{
 irq_set_chip_and_handler(irq, &icu_irq_chip, handle_level_irq);
 return 0;
}
