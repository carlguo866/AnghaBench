
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct atlas7_gpio_chip {int dummy; } ;
struct atlas7_gpio_bank {size_t gpio_offset; size_t ngpio; int* gpio_pins; } ;


 int ENODEV ;
 struct atlas7_gpio_bank* atlas7_gpio_to_bank (struct atlas7_gpio_chip*,size_t) ;

__attribute__((used)) static int __atlas7_gpio_to_pin(struct atlas7_gpio_chip *a7gc, u32 gpio)
{
 struct atlas7_gpio_bank *bank;
 u32 ofs;

 bank = atlas7_gpio_to_bank(a7gc, gpio);
 ofs = gpio - bank->gpio_offset;
 if (ofs >= bank->ngpio)
  return -ENODEV;

 return bank->gpio_pins[ofs];
}
