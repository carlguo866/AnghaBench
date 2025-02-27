
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct resource {int start; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct gpio_irq_chip {int num_parents; int handler; int default_type; int * parents; int parent_handler; int * chip; } ;
struct device_node {int dummy; } ;
struct ath79_gpio_platform_data {int ngpios; int oe_inverted; } ;
struct TYPE_3__ {struct gpio_irq_chip irq; scalar_t__ base; } ;
struct ath79_gpio_ctrl {TYPE_1__ gc; int * base; int lock; } ;


 int AR71XX_GPIO_REG_CLEAR ;
 int AR71XX_GPIO_REG_IN ;
 int AR71XX_GPIO_REG_OE ;
 int AR71XX_GPIO_REG_SET ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IRQ_TYPE_NONE ;
 int ath79_gpio_irq_handler ;
 int ath79_gpio_irqchip ;
 int bgpio_init (TYPE_1__*,struct device*,int,int *,int *,int *,int *,int *,int ) ;
 int dev_err (struct device*,char*,...) ;
 struct ath79_gpio_platform_data* dev_get_platdata (struct device*) ;
 int devm_gpiochip_add_data (struct device*,TYPE_1__*,struct ath79_gpio_ctrl*) ;
 int * devm_ioremap_nocache (struct device*,int ,int ) ;
 int * devm_kcalloc (struct device*,int,int,int ) ;
 struct ath79_gpio_ctrl* devm_kzalloc (struct device*,int,int ) ;
 int handle_simple_irq ;
 int of_device_is_compatible (struct device_node*,char*) ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct ath79_gpio_ctrl*) ;
 int raw_spin_lock_init (int *) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int ath79_gpio_probe(struct platform_device *pdev)
{
 struct ath79_gpio_platform_data *pdata = dev_get_platdata(&pdev->dev);
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;
 struct ath79_gpio_ctrl *ctrl;
 struct gpio_irq_chip *girq;
 struct resource *res;
 u32 ath79_gpio_count;
 bool oe_inverted;
 int err;

 ctrl = devm_kzalloc(dev, sizeof(*ctrl), GFP_KERNEL);
 if (!ctrl)
  return -ENOMEM;
 platform_set_drvdata(pdev, ctrl);

 if (np) {
  err = of_property_read_u32(np, "ngpios", &ath79_gpio_count);
  if (err) {
   dev_err(dev, "ngpios property is not valid\n");
   return err;
  }
  oe_inverted = of_device_is_compatible(np, "qca,ar9340-gpio");
 } else if (pdata) {
  ath79_gpio_count = pdata->ngpios;
  oe_inverted = pdata->oe_inverted;
 } else {
  dev_err(dev, "No DT node or platform data found\n");
  return -EINVAL;
 }

 if (ath79_gpio_count >= 32) {
  dev_err(dev, "ngpios must be less than 32\n");
  return -EINVAL;
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res)
  return -EINVAL;
 ctrl->base = devm_ioremap_nocache(dev, res->start, resource_size(res));
 if (!ctrl->base)
  return -ENOMEM;

 raw_spin_lock_init(&ctrl->lock);
 err = bgpio_init(&ctrl->gc, dev, 4,
   ctrl->base + AR71XX_GPIO_REG_IN,
   ctrl->base + AR71XX_GPIO_REG_SET,
   ctrl->base + AR71XX_GPIO_REG_CLEAR,
   oe_inverted ? ((void*)0) : ctrl->base + AR71XX_GPIO_REG_OE,
   oe_inverted ? ctrl->base + AR71XX_GPIO_REG_OE : ((void*)0),
   0);
 if (err) {
  dev_err(dev, "bgpio_init failed\n");
  return err;
 }

 ctrl->gc.base = 0;


 if (!np || of_property_read_bool(np, "interrupt-controller")) {
  girq = &ctrl->gc.irq;
  girq->chip = &ath79_gpio_irqchip;
  girq->parent_handler = ath79_gpio_irq_handler;
  girq->num_parents = 1;
  girq->parents = devm_kcalloc(dev, 1, sizeof(*girq->parents),
          GFP_KERNEL);
  if (!girq->parents)
   return -ENOMEM;
  girq->parents[0] = platform_get_irq(pdev, 0);
  girq->default_type = IRQ_TYPE_NONE;
  girq->handler = handle_simple_irq;
 }

 err = devm_gpiochip_add_data(dev, &ctrl->gc, ctrl);
 if (err) {
  dev_err(dev,
   "cannot add AR71xx GPIO chip, error=%d", err);
  return err;
 }
 return 0;
}
