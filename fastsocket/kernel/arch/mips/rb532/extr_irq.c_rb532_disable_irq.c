
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int* base_addr; unsigned int mask; } ;


 scalar_t__ GPIO_MAPPED_IRQ_BASE ;
 unsigned int GPIO_MAPPED_IRQ_GROUP ;
 unsigned int GROUP0_IRQ_BASE ;
 int GROUP4_IRQ_BASE ;
 unsigned int READ_MASK (unsigned int volatile*) ;
 int WRITE_MASK (unsigned int volatile*,unsigned int) ;
 int disable_local_irq (unsigned int) ;
 unsigned int group_to_ip (unsigned int) ;
 TYPE_1__* intr_group ;
 int rb532_gpio_set_istat (int ,scalar_t__) ;

__attribute__((used)) static void rb532_disable_irq(unsigned int irq_nr)
{
 int ip = irq_nr - GROUP0_IRQ_BASE;
 unsigned int group, intr_bit, mask;
 volatile unsigned int *addr;

 if (ip < 0) {
  disable_local_irq(irq_nr);
 } else {
  group = ip >> 5;

  ip &= (1 << 5) - 1;
  intr_bit = 1 << ip;
  addr = intr_group[group].base_addr;
  mask = READ_MASK(addr);
  mask |= intr_bit;
  WRITE_MASK(addr, mask);


  if (group == GPIO_MAPPED_IRQ_GROUP && irq_nr <= (GROUP4_IRQ_BASE + 13))
   rb532_gpio_set_istat(0, irq_nr - GPIO_MAPPED_IRQ_BASE);





  if (mask == intr_group[group].mask)
   disable_local_irq(group_to_ip(group));
 }
}
