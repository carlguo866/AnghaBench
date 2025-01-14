
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct ep93xx_gpio {scalar_t__ base; } ;


 int BIT (unsigned int) ;
 int ep93xx_gpio_port (struct gpio_chip*) ;
 int* gpio_int_debounce ;
 struct ep93xx_gpio* gpiochip_get_data (struct gpio_chip*) ;
 scalar_t__* int_debounce_register_offset ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void ep93xx_gpio_int_debounce(struct gpio_chip *gc,
         unsigned int offset, bool enable)
{
 struct ep93xx_gpio *epg = gpiochip_get_data(gc);
 int port = ep93xx_gpio_port(gc);
 int port_mask = BIT(offset);

 if (enable)
  gpio_int_debounce[port] |= port_mask;
 else
  gpio_int_debounce[port] &= ~port_mask;

 writeb(gpio_int_debounce[port],
        epg->base + int_debounce_register_offset[port]);
}
