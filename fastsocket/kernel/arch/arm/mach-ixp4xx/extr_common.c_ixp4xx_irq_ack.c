
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* IXP4XX_GPIO_GPISR ;
 int* irq2gpio ;

__attribute__((used)) static void ixp4xx_irq_ack(unsigned int irq)
{
 int line = (irq < 32) ? irq2gpio[irq] : -1;

 if (line >= 0)
  *IXP4XX_GPIO_GPISR = (1 << line);
}
