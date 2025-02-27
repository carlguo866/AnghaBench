
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2880_priv {int dev; int * gpio; } ;
struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;


 int EINVAL ;
 int dev_err (int ,char*,unsigned int) ;
 struct rt2880_priv* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int rt2880_pmx_group_gpio_request_enable(struct pinctrl_dev *pctrldev,
      struct pinctrl_gpio_range *range,
      unsigned int pin)
{
 struct rt2880_priv *p = pinctrl_dev_get_drvdata(pctrldev);

 if (!p->gpio[pin]) {
  dev_err(p->dev, "pin %d is not set to gpio mux\n", pin);
  return -EINVAL;
 }

 return 0;
}
