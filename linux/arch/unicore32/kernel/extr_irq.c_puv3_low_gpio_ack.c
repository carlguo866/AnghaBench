
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int GPIO_GEDR ;
 int writel (int,int ) ;

__attribute__((used)) static void puv3_low_gpio_ack(struct irq_data *d)
{
 writel((1 << d->irq), GPIO_GEDR);
}
