
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct meson_pinctrl {int dummy; } ;


 int meson8_pmx_disable_other_groups (struct meson_pinctrl*,unsigned int,int) ;
 struct meson_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int meson8_pmx_request_gpio(struct pinctrl_dev *pcdev,
       struct pinctrl_gpio_range *range,
       unsigned offset)
{
 struct meson_pinctrl *pc = pinctrl_dev_get_drvdata(pcdev);

 meson8_pmx_disable_other_groups(pc, offset, -1);

 return 0;
}
