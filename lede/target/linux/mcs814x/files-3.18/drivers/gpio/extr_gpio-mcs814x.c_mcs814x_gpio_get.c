
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcs814x_gpio_chip {scalar_t__ regs; } ;
struct gpio_chip {int dummy; } ;


 scalar_t__ GPIO_PIN ;
 int readl_relaxed (scalar_t__) ;
 struct mcs814x_gpio_chip* to_mcs814x_gpio_chip (struct gpio_chip*) ;

__attribute__((used)) static int mcs814x_gpio_get(struct gpio_chip *chip, unsigned offset)
{
 struct mcs814x_gpio_chip *mcs814x = to_mcs814x_gpio_chip(chip);

 return readl_relaxed(mcs814x->regs + GPIO_PIN) & (1 << offset);
}
