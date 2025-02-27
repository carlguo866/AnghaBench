
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {size_t hwirq; } ;
struct gpio_chip {int dummy; } ;
struct gb_gpio_line {int irq_type_pending; int masked_pending; scalar_t__ masked; int irq_type; } ;
struct gb_gpio_controller {int irq_lock; struct gb_gpio_line* lines; } ;


 int _gb_gpio_irq_mask (struct gb_gpio_controller*,size_t) ;
 int _gb_gpio_irq_set_type (struct gb_gpio_controller*,size_t,int ) ;
 int _gb_gpio_irq_unmask (struct gb_gpio_controller*,size_t) ;
 struct gb_gpio_controller* gpio_chip_to_gb_gpio_controller (struct gpio_chip*) ;
 struct gpio_chip* irq_data_to_gpio_chip (struct irq_data*) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void gb_gpio_irq_bus_sync_unlock(struct irq_data *d)
{
 struct gpio_chip *chip = irq_data_to_gpio_chip(d);
 struct gb_gpio_controller *ggc = gpio_chip_to_gb_gpio_controller(chip);
 struct gb_gpio_line *line = &ggc->lines[d->hwirq];

 if (line->irq_type_pending) {
  _gb_gpio_irq_set_type(ggc, d->hwirq, line->irq_type);
  line->irq_type_pending = 0;
 }

 if (line->masked_pending) {
  if (line->masked)
   _gb_gpio_irq_mask(ggc, d->hwirq);
  else
   _gb_gpio_irq_unmask(ggc, d->hwirq);
  line->masked_pending = 0;
 }

 mutex_unlock(&ggc->irq_lock);
}
