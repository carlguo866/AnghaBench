
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int GFER ;
 unsigned int GPIO11_27_MASK (unsigned int) ;
 unsigned int GPIO_IRQ_mask ;
 unsigned int GRER ;

__attribute__((used)) static void sa1100_high_gpio_mask(unsigned int irq)
{
 unsigned int mask = GPIO11_27_MASK(irq);

 GPIO_IRQ_mask &= ~mask;

 GRER &= ~mask;
 GFER &= ~mask;
}
