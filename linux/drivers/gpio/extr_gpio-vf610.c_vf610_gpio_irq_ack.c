
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vf610_gpio_port {scalar_t__ base; } ;
struct irq_data {int hwirq; } ;


 int BIT (int) ;
 scalar_t__ PORT_ISFR ;
 struct vf610_gpio_port* gpiochip_get_data (int ) ;
 int irq_data_get_irq_chip_data (struct irq_data*) ;
 int vf610_gpio_writel (int ,scalar_t__) ;

__attribute__((used)) static void vf610_gpio_irq_ack(struct irq_data *d)
{
 struct vf610_gpio_port *port =
  gpiochip_get_data(irq_data_get_irq_chip_data(d));
 int gpio = d->hwirq;

 vf610_gpio_writel(BIT(gpio), port->base + PORT_ISFR);
}
