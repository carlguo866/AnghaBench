
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct wm831x_pdata {int gpio_base; } ;
struct TYPE_8__ {int base; int of_node; TYPE_3__* parent; int ngpio; } ;
struct wm831x_gpio {TYPE_2__ gpio_chip; struct wm831x* wm831x; } ;
struct wm831x {TYPE_1__* dev; int num_gpio; struct wm831x_pdata pdata; } ;
struct TYPE_9__ {int parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_7__ {int of_node; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (TYPE_3__*,char*,int) ;
 struct wm831x* dev_get_drvdata (int ) ;
 int devm_gpiochip_add_data (TYPE_3__*,TYPE_2__*,struct wm831x_gpio*) ;
 struct wm831x_gpio* devm_kzalloc (TYPE_3__*,int,int ) ;
 int platform_set_drvdata (struct platform_device*,struct wm831x_gpio*) ;
 TYPE_2__ template_chip ;

__attribute__((used)) static int wm831x_gpio_probe(struct platform_device *pdev)
{
 struct wm831x *wm831x = dev_get_drvdata(pdev->dev.parent);
 struct wm831x_pdata *pdata = &wm831x->pdata;
 struct wm831x_gpio *wm831x_gpio;
 int ret;

 wm831x_gpio = devm_kzalloc(&pdev->dev, sizeof(*wm831x_gpio),
       GFP_KERNEL);
 if (wm831x_gpio == ((void*)0))
  return -ENOMEM;

 wm831x_gpio->wm831x = wm831x;
 wm831x_gpio->gpio_chip = template_chip;
 wm831x_gpio->gpio_chip.ngpio = wm831x->num_gpio;
 wm831x_gpio->gpio_chip.parent = &pdev->dev;
 if (pdata && pdata->gpio_base)
  wm831x_gpio->gpio_chip.base = pdata->gpio_base;
 else
  wm831x_gpio->gpio_chip.base = -1;




 ret = devm_gpiochip_add_data(&pdev->dev, &wm831x_gpio->gpio_chip,
         wm831x_gpio);
 if (ret < 0) {
  dev_err(&pdev->dev, "Could not register gpiochip, %d\n", ret);
  return ret;
 }

 platform_set_drvdata(pdev, wm831x_gpio);

 return ret;
}
