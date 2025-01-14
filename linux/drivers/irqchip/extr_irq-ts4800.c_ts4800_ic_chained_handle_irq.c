
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ts4800_irq_data {int domain; scalar_t__ base; } ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;


 scalar_t__ IRQ_STATUS ;
 unsigned int __ffs (int) ;
 int chained_irq_enter (struct irq_chip*,struct irq_desc*) ;
 int chained_irq_exit (struct irq_chip*,struct irq_desc*) ;
 int generic_handle_irq (int) ;
 int handle_bad_irq (struct irq_desc*) ;
 struct irq_chip* irq_desc_get_chip (struct irq_desc*) ;
 struct ts4800_irq_data* irq_desc_get_handler_data (struct irq_desc*) ;
 int irq_find_mapping (int ,unsigned int) ;
 int readw (scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ts4800_ic_chained_handle_irq(struct irq_desc *desc)
{
 struct ts4800_irq_data *data = irq_desc_get_handler_data(desc);
 struct irq_chip *chip = irq_desc_get_chip(desc);
 u16 status = readw(data->base + IRQ_STATUS);

 chained_irq_enter(chip, desc);

 if (unlikely(status == 0)) {
  handle_bad_irq(desc);
  goto out;
 }

 do {
  unsigned int bit = __ffs(status);
  int irq = irq_find_mapping(data->domain, bit);

  status &= ~(1 << bit);
  generic_handle_irq(irq);
 } while (status);

out:
 chained_irq_exit(chip, desc);
}
