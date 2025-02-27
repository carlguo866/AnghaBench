
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sunxi_pinctrl {TYPE_1__* desc; scalar_t__* irq_array; int chip; } ;
struct irq_data {size_t hwirq; } ;
struct TYPE_2__ {scalar_t__ pin_base; } ;


 int gpiochip_unlock_as_irq (int ,scalar_t__) ;
 struct sunxi_pinctrl* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static void sunxi_pinctrl_irq_release_resources(struct irq_data *d)
{
 struct sunxi_pinctrl *pctl = irq_data_get_irq_chip_data(d);

 gpiochip_unlock_as_irq(pctl->chip,
         pctl->irq_array[d->hwirq] - pctl->desc->pin_base);
}
