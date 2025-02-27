
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct st_pinctrl {scalar_t__ irqmux_base; struct device* dev; struct st_gpio_bank* banks; } ;
struct TYPE_6__ {int base; int ngpio; struct device_node* label; struct device* parent; struct device_node* of_node; } ;
struct pinctrl_gpio_range {int id; int pin_base; int base; int npins; struct device_node* name; TYPE_1__* gc; } ;
struct st_gpio_bank {TYPE_1__ gpio_chip; int lock; int base; struct pinctrl_gpio_range range; } ;
struct resource {int start; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 int ENODEV ;
 int IRQ_TYPE_NONE ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int ST_GPIO_PINS_PER_BANK ;
 int dev_err (struct device*,char*,int) ;
 int dev_info (struct device*,char*,...) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 int gpiochip_add_data (TYPE_1__*,struct st_gpio_bank*) ;
 int gpiochip_irqchip_add (TYPE_1__*,int *,int ,int ,int ) ;
 int gpiochip_remove (TYPE_1__*) ;
 int gpiochip_set_chained_irqchip (TYPE_1__*,int *,int,int ) ;
 int handle_simple_irq ;
 scalar_t__ of_address_to_resource (struct device_node*,int ,struct resource*) ;
 int of_alias_get_id (struct device_node*,char*) ;
 scalar_t__ of_irq_to_resource (struct device_node*,int ,struct resource*) ;
 int of_property_read_string (struct device_node*,char*,struct device_node**) ;
 int spin_lock_init (int *) ;
 int st_gpio_irq_handler ;
 int st_gpio_irqchip ;
 TYPE_1__ st_gpio_template ;

__attribute__((used)) static int st_gpiolib_register_bank(struct st_pinctrl *info,
 int bank_nr, struct device_node *np)
{
 struct st_gpio_bank *bank = &info->banks[bank_nr];
 struct pinctrl_gpio_range *range = &bank->range;
 struct device *dev = info->dev;
 int bank_num = of_alias_get_id(np, "gpio");
 struct resource res, irq_res;
 int gpio_irq = 0, err;

 if (of_address_to_resource(np, 0, &res))
  return -ENODEV;

 bank->base = devm_ioremap_resource(dev, &res);
 if (IS_ERR(bank->base))
  return PTR_ERR(bank->base);

 bank->gpio_chip = st_gpio_template;
 bank->gpio_chip.base = bank_num * ST_GPIO_PINS_PER_BANK;
 bank->gpio_chip.ngpio = ST_GPIO_PINS_PER_BANK;
 bank->gpio_chip.of_node = np;
 bank->gpio_chip.parent = dev;
 spin_lock_init(&bank->lock);

 of_property_read_string(np, "st,bank-name", &range->name);
 bank->gpio_chip.label = range->name;

 range->id = bank_num;
 range->pin_base = range->base = range->id * ST_GPIO_PINS_PER_BANK;
 range->npins = bank->gpio_chip.ngpio;
 range->gc = &bank->gpio_chip;
 err = gpiochip_add_data(&bank->gpio_chip, bank);
 if (err) {
  dev_err(dev, "Failed to add gpiochip(%d)!\n", bank_num);
  return err;
 }
 dev_info(dev, "%s bank added.\n", range->name);
 if (of_irq_to_resource(np, 0, &irq_res) > 0) {
  gpio_irq = irq_res.start;
  gpiochip_set_chained_irqchip(&bank->gpio_chip, &st_gpio_irqchip,
          gpio_irq, st_gpio_irq_handler);
 }

 if (info->irqmux_base || gpio_irq > 0) {
  err = gpiochip_irqchip_add(&bank->gpio_chip, &st_gpio_irqchip,
        0, handle_simple_irq,
        IRQ_TYPE_NONE);
  if (err) {
   gpiochip_remove(&bank->gpio_chip);
   dev_info(dev, "could not add irqchip\n");
   return err;
  }
 } else {
  dev_info(dev, "No IRQ support for %pOF bank\n", np);
 }

 return 0;
}
