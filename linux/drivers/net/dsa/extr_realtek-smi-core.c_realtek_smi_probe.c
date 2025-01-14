
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct realtek_smi_variant {int ds_ops; TYPE_1__* ops; int cmd_write; int cmd_read; int clk_delay; } ;
struct realtek_smi {TYPE_2__* ds; int num_ports; TYPE_1__* ops; int leds_disabled; void* mdio; void* mdc; void* reset; int lock; int cmd_write; int cmd_read; int clk_delay; struct device* dev; void* map; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct TYPE_5__ {int ops; struct realtek_smi* priv; } ;
struct TYPE_4__ {int (* detect ) (struct realtek_smi*) ;} ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_HIGH ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int REALTEK_SMI_HW_START_DELAY ;
 int REALTEK_SMI_HW_STOP_DELAY ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*) ;
 int dev_set_drvdata (struct device*,struct realtek_smi*) ;
 void* devm_gpiod_get_optional (struct device*,char*,int ) ;
 struct realtek_smi* devm_kzalloc (struct device*,int,int ) ;
 void* devm_regmap_init (struct device*,int *,struct realtek_smi*,int *) ;
 int dsa_register_switch (TYPE_2__*) ;
 TYPE_2__* dsa_switch_alloc (struct device*,int ) ;
 int gpiod_set_value (void*,int ) ;
 int msleep (int ) ;
 struct realtek_smi_variant* of_device_get_match_data (struct device*) ;
 int of_property_read_bool (struct device_node*,char*) ;
 int realtek_smi_mdio_regmap_config ;
 int spin_lock_init (int *) ;
 int stub1 (struct realtek_smi*) ;

__attribute__((used)) static int realtek_smi_probe(struct platform_device *pdev)
{
 const struct realtek_smi_variant *var;
 struct device *dev = &pdev->dev;
 struct realtek_smi *smi;
 struct device_node *np;
 int ret;

 var = of_device_get_match_data(dev);
 np = dev->of_node;

 smi = devm_kzalloc(dev, sizeof(*smi), GFP_KERNEL);
 if (!smi)
  return -ENOMEM;
 smi->map = devm_regmap_init(dev, ((void*)0), smi,
        &realtek_smi_mdio_regmap_config);
 if (IS_ERR(smi->map)) {
  ret = PTR_ERR(smi->map);
  dev_err(dev, "regmap init failed: %d\n", ret);
  return ret;
 }


 smi->dev = dev;
 smi->clk_delay = var->clk_delay;
 smi->cmd_read = var->cmd_read;
 smi->cmd_write = var->cmd_write;
 smi->ops = var->ops;

 dev_set_drvdata(dev, smi);
 spin_lock_init(&smi->lock);




 smi->reset = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_HIGH);
 if (IS_ERR(smi->reset)) {
  dev_err(dev, "failed to get RESET GPIO\n");
  return PTR_ERR(smi->reset);
 }
 msleep(REALTEK_SMI_HW_STOP_DELAY);
 gpiod_set_value(smi->reset, 0);
 msleep(REALTEK_SMI_HW_START_DELAY);
 dev_info(dev, "deasserted RESET\n");


 smi->mdc = devm_gpiod_get_optional(dev, "mdc", GPIOD_OUT_LOW);
 if (IS_ERR(smi->mdc))
  return PTR_ERR(smi->mdc);
 smi->mdio = devm_gpiod_get_optional(dev, "mdio", GPIOD_OUT_LOW);
 if (IS_ERR(smi->mdio))
  return PTR_ERR(smi->mdio);

 smi->leds_disabled = of_property_read_bool(np, "realtek,disable-leds");

 ret = smi->ops->detect(smi);
 if (ret) {
  dev_err(dev, "unable to detect switch\n");
  return ret;
 }

 smi->ds = dsa_switch_alloc(dev, smi->num_ports);
 if (!smi->ds)
  return -ENOMEM;
 smi->ds->priv = smi;

 smi->ds->ops = var->ds_ops;
 ret = dsa_register_switch(smi->ds);
 if (ret) {
  dev_err(dev, "unable to register switch ret = %d\n", ret);
  return ret;
 }
 return 0;
}
