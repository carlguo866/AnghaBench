
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct samsung_gpio_chip {int dummy; } ;
typedef int samsung_gpio_pull_t ;


 int S3C_GPIO_PULL_UP ;
 int s3c24xx_gpio_setpull_1 (struct samsung_gpio_chip*,unsigned int,int ,int ) ;

int s3c24xx_gpio_setpull_1up(struct samsung_gpio_chip *chip,
        unsigned int off, samsung_gpio_pull_t pull)
{
 return s3c24xx_gpio_setpull_1(chip, off, pull, S3C_GPIO_PULL_UP);
}
