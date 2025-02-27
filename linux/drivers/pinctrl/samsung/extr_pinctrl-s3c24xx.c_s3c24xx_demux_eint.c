
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct samsung_pinctrl_drv_data {scalar_t__ virt_base; } ;
struct s3c24xx_eint_data {int * domains; struct samsung_pinctrl_drv_data* drvdata; } ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;


 int BUG_ON (int) ;
 scalar_t__ EINTMASK_REG ;
 scalar_t__ EINTPEND_REG ;
 unsigned int __ffs (unsigned int) ;
 int chained_irq_enter (struct irq_chip*,struct irq_desc*) ;
 int chained_irq_exit (struct irq_chip*,struct irq_desc*) ;
 int generic_handle_irq (unsigned int) ;
 struct irq_chip* irq_desc_get_chip (struct irq_desc*) ;
 struct s3c24xx_eint_data* irq_desc_get_handler_data (struct irq_desc*) ;
 unsigned int irq_linear_revmap (int ,unsigned int) ;
 unsigned int readl (scalar_t__) ;

__attribute__((used)) static inline void s3c24xx_demux_eint(struct irq_desc *desc,
          u32 offset, u32 range)
{
 struct s3c24xx_eint_data *data = irq_desc_get_handler_data(desc);
 struct irq_chip *chip = irq_desc_get_chip(desc);
 struct samsung_pinctrl_drv_data *d = data->drvdata;
 unsigned int pend, mask;

 chained_irq_enter(chip, desc);

 pend = readl(d->virt_base + EINTPEND_REG);
 mask = readl(d->virt_base + EINTMASK_REG);

 pend &= ~mask;
 pend &= range;

 while (pend) {
  unsigned int virq, irq;

  irq = __ffs(pend);
  pend &= ~(1 << irq);
  virq = irq_linear_revmap(data->domains[irq], irq - offset);

  BUG_ON(!virq);

  generic_handle_irq(virq);
 }

 chained_irq_exit(chip, desc);
}
