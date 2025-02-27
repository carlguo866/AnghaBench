
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_2__ {int status; } ;


 size_t GPIO_EDGE_MASK (int) ;
 size_t GPIO_LEVEL_MASK (int) ;
 int IRQ_TYPE_EDGE_FALLING ;
 int IRQ_TYPE_EDGE_RISING ;
 int IRQ_TYPE_SENSE_MASK ;
 TYPE_1__* irq_desc ;
 int irq_to_gpio (size_t) ;
 size_t readl (size_t) ;
 int writel (size_t,size_t) ;

__attribute__((used)) static void gpio_irq_unmask(u32 irq)
{
 int pin = irq_to_gpio(irq);
 int type = irq_desc[irq].status & IRQ_TYPE_SENSE_MASK;
 u32 reg = (type & (IRQ_TYPE_EDGE_RISING | IRQ_TYPE_EDGE_FALLING)) ?
  GPIO_EDGE_MASK(pin) : GPIO_LEVEL_MASK(pin);
 u32 u = readl(reg);
 u |= 1 << (pin & 31);
 writel(u, reg);
}
