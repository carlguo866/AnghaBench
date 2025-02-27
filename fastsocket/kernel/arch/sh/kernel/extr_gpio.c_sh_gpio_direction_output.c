
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinmux_info {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int PINMUX_TYPE_OUTPUT ;
 struct pinmux_info* chip_to_pinmux (struct gpio_chip*) ;
 int gpio_lock ;
 int pinmux_direction (struct pinmux_info*,unsigned int,int ) ;
 int sh_gpio_set_value (struct pinmux_info*,unsigned int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int sh_gpio_direction_output(struct gpio_chip *chip, unsigned offset,
        int value)
{
 struct pinmux_info *gpioc = chip_to_pinmux(chip);
 unsigned long flags;
 int ret;

 sh_gpio_set_value(gpioc, offset, value);
 spin_lock_irqsave(&gpio_lock, flags);
 ret = pinmux_direction(gpioc, offset, PINMUX_TYPE_OUTPUT);
 spin_unlock_irqrestore(&gpio_lock, flags);

 return ret;
}
