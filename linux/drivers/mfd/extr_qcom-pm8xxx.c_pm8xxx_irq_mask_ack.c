
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pm_irq_chip {int* config; } ;
struct irq_data {int dummy; } ;


 int PM_IRQF_CLR ;
 int PM_IRQF_MASK_ALL ;
 struct pm_irq_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 unsigned int irqd_to_hwirq (struct irq_data*) ;
 int pm8xxx_config_irq (struct pm_irq_chip*,int,int) ;

__attribute__((used)) static void pm8xxx_irq_mask_ack(struct irq_data *d)
{
 struct pm_irq_chip *chip = irq_data_get_irq_chip_data(d);
 unsigned int pmirq = irqd_to_hwirq(d);
 u8 block, config;

 block = pmirq / 8;

 config = chip->config[pmirq] | PM_IRQF_MASK_ALL | PM_IRQF_CLR;
 pm8xxx_config_irq(chip, block, config);
}
