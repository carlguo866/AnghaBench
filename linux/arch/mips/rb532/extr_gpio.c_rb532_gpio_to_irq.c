
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;



__attribute__((used)) static int rb532_gpio_to_irq(struct gpio_chip *chip, unsigned gpio)
{
 return 8 + 4 * 32 + gpio;
}
