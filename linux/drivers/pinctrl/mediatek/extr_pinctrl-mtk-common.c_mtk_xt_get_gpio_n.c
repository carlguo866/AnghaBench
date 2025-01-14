
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_pinctrl {struct gpio_chip* chip; } ;
struct TYPE_2__ {unsigned int number; } ;
struct mtk_desc_pin {TYPE_1__ pin; } ;
struct gpio_chip {int dummy; } ;


 int EINVAL ;
 struct mtk_desc_pin* mtk_find_pin_by_eint_num (struct mtk_pinctrl*,unsigned long) ;

__attribute__((used)) static int
mtk_xt_get_gpio_n(void *data, unsigned long eint_n, unsigned int *gpio_n,
    struct gpio_chip **gpio_chip)
{
 struct mtk_pinctrl *pctl = (struct mtk_pinctrl *)data;
 const struct mtk_desc_pin *pin;

 pin = mtk_find_pin_by_eint_num(pctl, eint_n);
 if (!pin)
  return -EINVAL;

 *gpio_chip = pctl->chip;
 *gpio_n = pin->pin.number;

 return 0;
}
