
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_pinctrl {int dummy; } ;


 int REG_OUT ;
 int meson_pinconf_set_gpio_bit (struct meson_pinctrl*,unsigned int,int ,int) ;

__attribute__((used)) static int meson_pinconf_set_drive(struct meson_pinctrl *pc,
       unsigned int pin,
       bool high)
{
 return meson_pinconf_set_gpio_bit(pc, pin, REG_OUT, high);
}
