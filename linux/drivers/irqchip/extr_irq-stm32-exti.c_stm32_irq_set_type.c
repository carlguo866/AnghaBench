
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_exti_chip_data {struct stm32_exti_bank* reg_bank; } ;
struct stm32_exti_bank {int ftsr_ofst; int rtsr_ofst; } ;
struct irq_data {int dummy; } ;
struct irq_chip_generic {struct stm32_exti_chip_data* private; } ;


 struct irq_chip_generic* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_gc_lock (struct irq_chip_generic*) ;
 int irq_gc_unlock (struct irq_chip_generic*) ;
 int irq_reg_readl (struct irq_chip_generic*,int ) ;
 int irq_reg_writel (struct irq_chip_generic*,int ,int ) ;
 int stm32_exti_hwspin_lock (struct stm32_exti_chip_data*) ;
 int stm32_exti_hwspin_unlock (struct stm32_exti_chip_data*) ;
 int stm32_exti_set_type (struct irq_data*,unsigned int,int *,int *) ;

__attribute__((used)) static int stm32_irq_set_type(struct irq_data *d, unsigned int type)
{
 struct irq_chip_generic *gc = irq_data_get_irq_chip_data(d);
 struct stm32_exti_chip_data *chip_data = gc->private;
 const struct stm32_exti_bank *stm32_bank = chip_data->reg_bank;
 u32 rtsr, ftsr;
 int err;

 irq_gc_lock(gc);

 err = stm32_exti_hwspin_lock(chip_data);
 if (err)
  goto unlock;

 rtsr = irq_reg_readl(gc, stm32_bank->rtsr_ofst);
 ftsr = irq_reg_readl(gc, stm32_bank->ftsr_ofst);

 err = stm32_exti_set_type(d, type, &rtsr, &ftsr);
 if (err)
  goto unspinlock;

 irq_reg_writel(gc, rtsr, stm32_bank->rtsr_ofst);
 irq_reg_writel(gc, ftsr, stm32_bank->ftsr_ofst);

unspinlock:
 stm32_exti_hwspin_unlock(chip_data);
unlock:
 irq_gc_unlock(gc);

 return err;
}
