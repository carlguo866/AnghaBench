
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct bcm2835_pinctrl {int dummy; } ;
typedef enum bcm2835_fsel { ____Placeholder_bcm2835_fsel } bcm2835_fsel ;


 int BCM2835_FSEL_GPIO_IN ;
 int BCM2835_FSEL_GPIO_OUT ;
 int bcm2835_pinctrl_fsel_set (struct bcm2835_pinctrl*,unsigned int,int) ;
 struct bcm2835_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int bcm2835_pmx_gpio_set_direction(struct pinctrl_dev *pctldev,
  struct pinctrl_gpio_range *range,
  unsigned offset,
  bool input)
{
 struct bcm2835_pinctrl *pc = pinctrl_dev_get_drvdata(pctldev);
 enum bcm2835_fsel fsel = input ?
  BCM2835_FSEL_GPIO_IN : BCM2835_FSEL_GPIO_OUT;

 bcm2835_pinctrl_fsel_set(pc, offset, fsel);

 return 0;
}
