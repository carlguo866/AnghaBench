
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct clk_periph_driver_data {TYPE_1__* hw_data; int lock; int reg; } ;
struct clk_periph_data {scalar_t__ name; } ;
struct clk_hw {int dummy; } ;
struct TYPE_3__ {int num; struct clk_hw** hws; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 scalar_t__ armada_3700_add_composite_clk (struct clk_periph_data const*,int ,int *,struct device*,struct clk_hw**) ;
 int clk_hw_unregister (struct clk_hw*) ;
 int dev_err (struct device*,char*,scalar_t__) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 void* devm_kzalloc (struct device*,int,int ) ;
 int hws ;
 int of_clk_add_hw_provider (struct device_node*,int ,TYPE_1__*) ;
 int of_clk_hw_onecell_get ;
 struct clk_periph_data* of_device_get_match_data (struct device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct clk_periph_driver_data*) ;
 int spin_lock_init (int *) ;
 int struct_size (TYPE_1__*,int ,int) ;

__attribute__((used)) static int armada_3700_periph_clock_probe(struct platform_device *pdev)
{
 struct clk_periph_driver_data *driver_data;
 struct device_node *np = pdev->dev.of_node;
 const struct clk_periph_data *data;
 struct device *dev = &pdev->dev;
 int num_periph = 0, i, ret;
 struct resource *res;

 data = of_device_get_match_data(dev);
 if (!data)
  return -ENODEV;

 while (data[num_periph].name)
  num_periph++;

 driver_data = devm_kzalloc(dev, sizeof(*driver_data), GFP_KERNEL);
 if (!driver_data)
  return -ENOMEM;

 driver_data->hw_data = devm_kzalloc(dev,
         struct_size(driver_data->hw_data,
       hws, num_periph),
         GFP_KERNEL);
 if (!driver_data->hw_data)
  return -ENOMEM;
 driver_data->hw_data->num = num_periph;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 driver_data->reg = devm_ioremap_resource(dev, res);
 if (IS_ERR(driver_data->reg))
  return PTR_ERR(driver_data->reg);

 spin_lock_init(&driver_data->lock);

 for (i = 0; i < num_periph; i++) {
  struct clk_hw **hw = &driver_data->hw_data->hws[i];
  if (armada_3700_add_composite_clk(&data[i], driver_data->reg,
        &driver_data->lock, dev, hw))
   dev_err(dev, "Can't register periph clock %s\n",
    data[i].name);
 }

 ret = of_clk_add_hw_provider(np, of_clk_hw_onecell_get,
         driver_data->hw_data);
 if (ret) {
  for (i = 0; i < num_periph; i++)
   clk_hw_unregister(driver_data->hw_data->hws[i]);
  return ret;
 }

 platform_set_drvdata(pdev, driver_data);
 return 0;
}
