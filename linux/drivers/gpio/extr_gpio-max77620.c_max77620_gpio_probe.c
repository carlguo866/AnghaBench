
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_5__* parent; } ;
struct platform_device {TYPE_1__ dev; int name; } ;
struct TYPE_8__ {int can_sleep; int base; int of_node; int ngpio; int to_irq; int set_config; int set; int direction_output; int get; int direction_input; TYPE_1__* parent; int label; } ;
struct max77620_gpio {TYPE_4__ gpio_chip; TYPE_1__* dev; int rmap; } ;
struct max77620_chip {int gpio_irq_data; int rmap; } ;
struct TYPE_9__ {int of_node; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int MAX77620_GPIO_NR ;
 int dev_err (TYPE_1__*,char*,...) ;
 struct max77620_chip* dev_get_drvdata (TYPE_5__*) ;
 int devm_gpiochip_add_data (TYPE_1__*,TYPE_4__*,struct max77620_gpio*) ;
 struct max77620_gpio* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_regmap_add_irq_chip (TYPE_1__*,int ,int,int ,int,int *,int *) ;
 int max77620_gpio_dir_input ;
 int max77620_gpio_dir_output ;
 int max77620_gpio_get ;
 int max77620_gpio_irq_chip ;
 int max77620_gpio_set ;
 int max77620_gpio_set_config ;
 int max77620_gpio_to_irq ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct max77620_gpio*) ;

__attribute__((used)) static int max77620_gpio_probe(struct platform_device *pdev)
{
 struct max77620_chip *chip = dev_get_drvdata(pdev->dev.parent);
 struct max77620_gpio *mgpio;
 int gpio_irq;
 int ret;

 gpio_irq = platform_get_irq(pdev, 0);
 if (gpio_irq <= 0)
  return -ENODEV;

 mgpio = devm_kzalloc(&pdev->dev, sizeof(*mgpio), GFP_KERNEL);
 if (!mgpio)
  return -ENOMEM;

 mgpio->rmap = chip->rmap;
 mgpio->dev = &pdev->dev;

 mgpio->gpio_chip.label = pdev->name;
 mgpio->gpio_chip.parent = &pdev->dev;
 mgpio->gpio_chip.direction_input = max77620_gpio_dir_input;
 mgpio->gpio_chip.get = max77620_gpio_get;
 mgpio->gpio_chip.direction_output = max77620_gpio_dir_output;
 mgpio->gpio_chip.set = max77620_gpio_set;
 mgpio->gpio_chip.set_config = max77620_gpio_set_config;
 mgpio->gpio_chip.to_irq = max77620_gpio_to_irq;
 mgpio->gpio_chip.ngpio = MAX77620_GPIO_NR;
 mgpio->gpio_chip.can_sleep = 1;
 mgpio->gpio_chip.base = -1;




 platform_set_drvdata(pdev, mgpio);

 ret = devm_gpiochip_add_data(&pdev->dev, &mgpio->gpio_chip, mgpio);
 if (ret < 0) {
  dev_err(&pdev->dev, "gpio_init: Failed to add max77620_gpio\n");
  return ret;
 }

 ret = devm_regmap_add_irq_chip(&pdev->dev, chip->rmap, gpio_irq,
           IRQF_ONESHOT, -1,
           &max77620_gpio_irq_chip,
           &chip->gpio_irq_data);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to add gpio irq_chip %d\n", ret);
  return ret;
 }

 return 0;
}
