
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct bcm281xx_pinctrl_data {unsigned int npins; TYPE_1__* pins; } ;
typedef enum bcm281xx_pin_type { ____Placeholder_bcm281xx_pin_type } bcm281xx_pin_type ;
struct TYPE_2__ {scalar_t__ drv_data; } ;


 int BCM281XX_PIN_TYPE_UNKNOWN ;
 struct bcm281xx_pinctrl_data* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static inline enum bcm281xx_pin_type pin_type_get(struct pinctrl_dev *pctldev,
        unsigned pin)
{
 struct bcm281xx_pinctrl_data *pdata = pinctrl_dev_get_drvdata(pctldev);

 if (pin >= pdata->npins)
  return BCM281XX_PIN_TYPE_UNKNOWN;

 return *(enum bcm281xx_pin_type *)(pdata->pins[pin].drv_data);
}
