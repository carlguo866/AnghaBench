
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct gpio_irq_chip {int threaded; TYPE_1__* chip; } ;
struct TYPE_10__ {int base; struct gpio_irq_chip irq; int get; int set; int set_config; int free; int request; int direction_input; int of_node; TYPE_2__* parent; int ngpio; void* label; } ;
struct TYPE_8__ {int flags; int irq_bus_sync_unlock; int irq_bus_lock; int irq_set_type; int irq_unmask; int irq_mask; void* name; } ;
struct sprd_pmic_eic {int irq; TYPE_5__ chip; TYPE_1__ intc; int offset; int map; int buslock; } ;
struct TYPE_9__ {int of_node; int parent; } ;
struct platform_device {TYPE_2__ dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQCHIP_SKIP_SET_WAKE ;
 int IRQF_NO_SUSPEND ;
 int IRQF_ONESHOT ;
 int SPRD_PMIC_EIC_NR ;
 int dev_err (TYPE_2__*,char*,...) ;
 int dev_get_regmap (int ,int *) ;
 void* dev_name (TYPE_2__*) ;
 int devm_gpiochip_add_data (TYPE_2__*,TYPE_5__*,struct sprd_pmic_eic*) ;
 struct sprd_pmic_eic* devm_kzalloc (TYPE_2__*,int,int ) ;
 int devm_request_threaded_irq (TYPE_2__*,int,int *,int ,int,void*,struct sprd_pmic_eic*) ;
 int mutex_init (int *) ;
 int of_property_read_u32 (int ,char*,int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct sprd_pmic_eic*) ;
 int sprd_pmic_eic_bus_lock ;
 int sprd_pmic_eic_bus_sync_unlock ;
 int sprd_pmic_eic_direction_input ;
 int sprd_pmic_eic_free ;
 int sprd_pmic_eic_get ;
 int sprd_pmic_eic_irq_handler ;
 int sprd_pmic_eic_irq_mask ;
 int sprd_pmic_eic_irq_set_type ;
 int sprd_pmic_eic_irq_unmask ;
 int sprd_pmic_eic_request ;
 int sprd_pmic_eic_set ;
 int sprd_pmic_eic_set_config ;

__attribute__((used)) static int sprd_pmic_eic_probe(struct platform_device *pdev)
{
 struct gpio_irq_chip *irq;
 struct sprd_pmic_eic *pmic_eic;
 int ret;

 pmic_eic = devm_kzalloc(&pdev->dev, sizeof(*pmic_eic), GFP_KERNEL);
 if (!pmic_eic)
  return -ENOMEM;

 mutex_init(&pmic_eic->buslock);

 pmic_eic->irq = platform_get_irq(pdev, 0);
 if (pmic_eic->irq < 0)
  return pmic_eic->irq;

 pmic_eic->map = dev_get_regmap(pdev->dev.parent, ((void*)0));
 if (!pmic_eic->map)
  return -ENODEV;

 ret = of_property_read_u32(pdev->dev.of_node, "reg", &pmic_eic->offset);
 if (ret) {
  dev_err(&pdev->dev, "Failed to get PMIC EIC base address.\n");
  return ret;
 }

 ret = devm_request_threaded_irq(&pdev->dev, pmic_eic->irq, ((void*)0),
     sprd_pmic_eic_irq_handler,
     IRQF_ONESHOT | IRQF_NO_SUSPEND,
     dev_name(&pdev->dev), pmic_eic);
 if (ret) {
  dev_err(&pdev->dev, "Failed to request PMIC EIC IRQ.\n");
  return ret;
 }

 pmic_eic->chip.label = dev_name(&pdev->dev);
 pmic_eic->chip.ngpio = SPRD_PMIC_EIC_NR;
 pmic_eic->chip.base = -1;
 pmic_eic->chip.parent = &pdev->dev;
 pmic_eic->chip.of_node = pdev->dev.of_node;
 pmic_eic->chip.direction_input = sprd_pmic_eic_direction_input;
 pmic_eic->chip.request = sprd_pmic_eic_request;
 pmic_eic->chip.free = sprd_pmic_eic_free;
 pmic_eic->chip.set_config = sprd_pmic_eic_set_config;
 pmic_eic->chip.set = sprd_pmic_eic_set;
 pmic_eic->chip.get = sprd_pmic_eic_get;

 pmic_eic->intc.name = dev_name(&pdev->dev);
 pmic_eic->intc.irq_mask = sprd_pmic_eic_irq_mask;
 pmic_eic->intc.irq_unmask = sprd_pmic_eic_irq_unmask;
 pmic_eic->intc.irq_set_type = sprd_pmic_eic_irq_set_type;
 pmic_eic->intc.irq_bus_lock = sprd_pmic_eic_bus_lock;
 pmic_eic->intc.irq_bus_sync_unlock = sprd_pmic_eic_bus_sync_unlock;
 pmic_eic->intc.flags = IRQCHIP_SKIP_SET_WAKE;

 irq = &pmic_eic->chip.irq;
 irq->chip = &pmic_eic->intc;
 irq->threaded = 1;

 ret = devm_gpiochip_add_data(&pdev->dev, &pmic_eic->chip, pmic_eic);
 if (ret < 0) {
  dev_err(&pdev->dev, "Could not register gpiochip %d.\n", ret);
  return ret;
 }

 platform_set_drvdata(pdev, pmic_eic);
 return 0;
}
