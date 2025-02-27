
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msp71xx_exd_gpio_chip {int reg; } ;
struct gpio_chip {int dummy; } ;


 unsigned int MSP71XX_READ_OFFSET (unsigned int) ;
 int __raw_readl (int ) ;
 struct msp71xx_exd_gpio_chip* to_msp71xx_exd_gpio_chip (struct gpio_chip*) ;

__attribute__((used)) static int msp71xx_exd_gpio_get(struct gpio_chip *chip, unsigned offset)
{
 struct msp71xx_exd_gpio_chip *msp71xx_chip =
     to_msp71xx_exd_gpio_chip(chip);
 const unsigned bit = MSP71XX_READ_OFFSET(offset);

 return __raw_readl(msp71xx_chip->reg) & (1 << bit);
}
