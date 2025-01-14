
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {struct gpmc_device* host_data; } ;
struct gpmc_device {int irq_chip; } ;
typedef scalar_t__ irq_hw_number_t ;


 scalar_t__ GPMC_NR_NAND_IRQS ;
 int IRQ_NOAUTOEN ;
 int IRQ_NOREQUEST ;
 int handle_edge_irq ;
 int handle_simple_irq ;
 int irq_modify_status (unsigned int,int ,int ) ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,struct gpmc_device*) ;

__attribute__((used)) static int gpmc_irq_map(struct irq_domain *d, unsigned int virq,
   irq_hw_number_t hw)
{
 struct gpmc_device *gpmc = d->host_data;

 irq_set_chip_data(virq, gpmc);
 if (hw < GPMC_NR_NAND_IRQS) {
  irq_modify_status(virq, IRQ_NOREQUEST, IRQ_NOAUTOEN);
  irq_set_chip_and_handler(virq, &gpmc->irq_chip,
      handle_simple_irq);
 } else {
  irq_set_chip_and_handler(virq, &gpmc->irq_chip,
      handle_edge_irq);
 }

 return 0;
}
