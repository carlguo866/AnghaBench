
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_pinctrl {struct rockchip_pin_ctrl* ctrl; } ;
struct rockchip_pin_ctrl {int nr_banks; struct rockchip_pin_bank* pin_banks; } ;
struct gpio_chip {int label; int of_node; int * parent; int ngpio; int base; } ;
struct rockchip_pin_bank {struct gpio_chip gpio_chip; int valid; int name; int of_node; int nr_pins; int pin_base; } ;
struct platform_device {int dev; } ;


 int dev_err (int *,char*,int ,int) ;
 int dev_warn (int *,char*,int ) ;
 int gpiochip_add_data (struct gpio_chip*,struct rockchip_pin_bank*) ;
 int gpiochip_remove (struct gpio_chip*) ;
 struct gpio_chip rockchip_gpiolib_chip ;
 int rockchip_interrupts_register (struct platform_device*,struct rockchip_pinctrl*) ;

__attribute__((used)) static int rockchip_gpiolib_register(struct platform_device *pdev,
      struct rockchip_pinctrl *info)
{
 struct rockchip_pin_ctrl *ctrl = info->ctrl;
 struct rockchip_pin_bank *bank = ctrl->pin_banks;
 struct gpio_chip *gc;
 int ret;
 int i;

 for (i = 0; i < ctrl->nr_banks; ++i, ++bank) {
  if (!bank->valid) {
   dev_warn(&pdev->dev, "bank %s is not valid\n",
     bank->name);
   continue;
  }

  bank->gpio_chip = rockchip_gpiolib_chip;

  gc = &bank->gpio_chip;
  gc->base = bank->pin_base;
  gc->ngpio = bank->nr_pins;
  gc->parent = &pdev->dev;
  gc->of_node = bank->of_node;
  gc->label = bank->name;

  ret = gpiochip_add_data(gc, bank);
  if (ret) {
   dev_err(&pdev->dev, "failed to register gpio_chip %s, error code: %d\n",
       gc->label, ret);
   goto fail;
  }
 }

 rockchip_interrupts_register(pdev, info);

 return 0;

fail:
 for (--i, --bank; i >= 0; --i, --bank) {
  if (!bank->valid)
   continue;
  gpiochip_remove(&bank->gpio_chip);
 }
 return ret;
}
