
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msp71xx_exd_gpio_chip {int reg; } ;
struct gpio_chip {int dummy; } ;


 int MSP71XX_CFG_OUT_OFFSET (unsigned int) ;
 int __raw_writel (int,int ) ;
 int msp71xx_exd_gpio_set (struct gpio_chip*,unsigned int,int) ;
 struct msp71xx_exd_gpio_chip* to_msp71xx_exd_gpio_chip (struct gpio_chip*) ;

__attribute__((used)) static int msp71xx_exd_direction_output(struct gpio_chip *chip,
     unsigned offset, int value)
{
 struct msp71xx_exd_gpio_chip *msp71xx_chip =
     to_msp71xx_exd_gpio_chip(chip);

 msp71xx_exd_gpio_set(chip, offset, value);
 __raw_writel(1 << MSP71XX_CFG_OUT_OFFSET(offset), msp71xx_chip->reg);
 return 0;
}
