
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_pinctrl {TYPE_1__* soc; } ;
struct mtk_pin_desc {int dummy; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int * pins; } ;


 int PINCTRL_PIN_REG_DI ;
 int mtk_hw_get_value (struct mtk_pinctrl*,struct mtk_pin_desc const*,int ,int*) ;
 int mtk_xt_get_gpio_n (struct mtk_pinctrl*,unsigned long,unsigned int*,struct gpio_chip**) ;

__attribute__((used)) static int mtk_xt_get_gpio_state(void *data, unsigned long eint_n)
{
 struct mtk_pinctrl *hw = (struct mtk_pinctrl *)data;
 const struct mtk_pin_desc *desc;
 struct gpio_chip *gpio_chip;
 unsigned int gpio_n;
 int value, err;

 err = mtk_xt_get_gpio_n(hw, eint_n, &gpio_n, &gpio_chip);
 if (err)
  return err;

 desc = (const struct mtk_pin_desc *)&hw->soc->pins[gpio_n];

 err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_DI, &value);
 if (err)
  return err;

 return !!value;
}
