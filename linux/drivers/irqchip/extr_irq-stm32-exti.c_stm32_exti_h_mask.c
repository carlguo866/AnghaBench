
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_exti_chip_data {int rlock; int mask_cache; struct stm32_exti_bank* reg_bank; } ;
struct stm32_exti_bank {int imr_ofst; } ;
struct irq_data {TYPE_1__* parent_data; } ;
struct TYPE_2__ {scalar_t__ chip; } ;


 int irq_chip_mask_parent (struct irq_data*) ;
 struct stm32_exti_chip_data* irq_data_get_irq_chip_data (struct irq_data*) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 int stm32_exti_clr_bit (struct irq_data*,int ) ;

__attribute__((used)) static void stm32_exti_h_mask(struct irq_data *d)
{
 struct stm32_exti_chip_data *chip_data = irq_data_get_irq_chip_data(d);
 const struct stm32_exti_bank *stm32_bank = chip_data->reg_bank;

 raw_spin_lock(&chip_data->rlock);
 chip_data->mask_cache = stm32_exti_clr_bit(d, stm32_bank->imr_ofst);
 raw_spin_unlock(&chip_data->rlock);

 if (d->parent_data->chip)
  irq_chip_mask_parent(d);
}
