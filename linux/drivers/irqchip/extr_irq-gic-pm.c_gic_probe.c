
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct gic_clk_data {int num_clocks; int * clocks; } ;
struct gic_chip_pm {int chip_data; struct gic_clk_data const* clk_data; TYPE_1__* clks; } ;
struct TYPE_3__ {int id; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*) ;
 int dev_set_drvdata (struct device*,struct gic_chip_pm*) ;
 int devm_clk_bulk_get (struct device*,int,TYPE_1__*) ;
 TYPE_1__* devm_kcalloc (struct device*,int,int,int ) ;
 struct gic_chip_pm* devm_kzalloc (struct device*,int,int ) ;
 int gic_of_init_child (struct device*,int *,int) ;
 int irq_dispose_mapping (int) ;
 int irq_of_parse_and_map (int ,int ) ;
 struct gic_clk_data* of_device_get_match_data (struct device*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;

__attribute__((used)) static int gic_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 const struct gic_clk_data *data;
 struct gic_chip_pm *chip_pm;
 int ret, irq, i;

 data = of_device_get_match_data(&pdev->dev);
 if (!data) {
  dev_err(&pdev->dev, "no device match found\n");
  return -ENODEV;
 }

 chip_pm = devm_kzalloc(dev, sizeof(*chip_pm), GFP_KERNEL);
 if (!chip_pm)
  return -ENOMEM;

 irq = irq_of_parse_and_map(dev->of_node, 0);
 if (!irq) {
  dev_err(dev, "no parent interrupt found!\n");
  return -EINVAL;
 }

 chip_pm->clks = devm_kcalloc(dev, data->num_clocks,
         sizeof(*chip_pm->clks), GFP_KERNEL);
 if (!chip_pm->clks)
  return -ENOMEM;

 for (i = 0; i < data->num_clocks; i++)
  chip_pm->clks[i].id = data->clocks[i];

 ret = devm_clk_bulk_get(dev, data->num_clocks, chip_pm->clks);
 if (ret)
  goto irq_dispose;

 chip_pm->clk_data = data;
 dev_set_drvdata(dev, chip_pm);

 pm_runtime_enable(dev);

 ret = pm_runtime_get_sync(dev);
 if (ret < 0)
  goto rpm_disable;

 ret = gic_of_init_child(dev, &chip_pm->chip_data, irq);
 if (ret)
  goto rpm_put;

 pm_runtime_put(dev);

 dev_info(dev, "GIC IRQ controller registered\n");

 return 0;

rpm_put:
 pm_runtime_put_sync(dev);
rpm_disable:
 pm_runtime_disable(dev);
irq_dispose:
 irq_dispose_mapping(irq);

 return ret;
}
