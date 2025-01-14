
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply_config {int of_node; struct axp20x_batt_ps* drv_data; } ;
struct power_supply_battery_info {int voltage_min_design_uv; int constant_charge_current_max_ua; } ;
struct device {int of_node; int parent; } ;
struct platform_device {struct device dev; } ;
struct axp_data {int dummy; } ;
struct axp20x_batt_ps {int max_ccc; void* batt; struct axp_data* data; int regmap; void* batt_dischrg_i; void* batt_chrg_i; void* batt_v; struct device* dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int axp20x_batt_ps_desc ;
 int axp20x_get_constant_charge_current (struct axp20x_batt_ps*,int*) ;
 scalar_t__ axp20x_set_constant_charge_current (struct axp20x_batt_ps*,int) ;
 scalar_t__ axp20x_set_voltage_min_design (struct axp20x_batt_ps*,int) ;
 int dev_err (struct device*,char*,...) ;
 int dev_get_regmap (int ,int *) ;
 void* devm_iio_channel_get (struct device*,char*) ;
 struct axp20x_batt_ps* devm_kzalloc (struct device*,int,int ) ;
 void* devm_power_supply_register (struct device*,int *,struct power_supply_config*) ;
 scalar_t__ of_device_get_match_data (struct device*) ;
 int of_device_is_available (int ) ;
 int platform_set_drvdata (struct platform_device*,struct axp20x_batt_ps*) ;
 int power_supply_get_battery_info (void*,struct power_supply_battery_info*) ;

__attribute__((used)) static int axp20x_power_probe(struct platform_device *pdev)
{
 struct axp20x_batt_ps *axp20x_batt;
 struct power_supply_config psy_cfg = {};
 struct power_supply_battery_info info;
 struct device *dev = &pdev->dev;

 if (!of_device_is_available(pdev->dev.of_node))
  return -ENODEV;

 axp20x_batt = devm_kzalloc(&pdev->dev, sizeof(*axp20x_batt),
       GFP_KERNEL);
 if (!axp20x_batt)
  return -ENOMEM;

 axp20x_batt->dev = &pdev->dev;

 axp20x_batt->batt_v = devm_iio_channel_get(&pdev->dev, "batt_v");
 if (IS_ERR(axp20x_batt->batt_v)) {
  if (PTR_ERR(axp20x_batt->batt_v) == -ENODEV)
   return -EPROBE_DEFER;
  return PTR_ERR(axp20x_batt->batt_v);
 }

 axp20x_batt->batt_chrg_i = devm_iio_channel_get(&pdev->dev,
       "batt_chrg_i");
 if (IS_ERR(axp20x_batt->batt_chrg_i)) {
  if (PTR_ERR(axp20x_batt->batt_chrg_i) == -ENODEV)
   return -EPROBE_DEFER;
  return PTR_ERR(axp20x_batt->batt_chrg_i);
 }

 axp20x_batt->batt_dischrg_i = devm_iio_channel_get(&pdev->dev,
          "batt_dischrg_i");
 if (IS_ERR(axp20x_batt->batt_dischrg_i)) {
  if (PTR_ERR(axp20x_batt->batt_dischrg_i) == -ENODEV)
   return -EPROBE_DEFER;
  return PTR_ERR(axp20x_batt->batt_dischrg_i);
 }

 axp20x_batt->regmap = dev_get_regmap(pdev->dev.parent, ((void*)0));
 platform_set_drvdata(pdev, axp20x_batt);

 psy_cfg.drv_data = axp20x_batt;
 psy_cfg.of_node = pdev->dev.of_node;

 axp20x_batt->data = (struct axp_data *)of_device_get_match_data(dev);

 axp20x_batt->batt = devm_power_supply_register(&pdev->dev,
             &axp20x_batt_ps_desc,
             &psy_cfg);
 if (IS_ERR(axp20x_batt->batt)) {
  dev_err(&pdev->dev, "failed to register power supply: %ld\n",
   PTR_ERR(axp20x_batt->batt));
  return PTR_ERR(axp20x_batt->batt);
 }

 if (!power_supply_get_battery_info(axp20x_batt->batt, &info)) {
  int vmin = info.voltage_min_design_uv;
  int ccc = info.constant_charge_current_max_ua;

  if (vmin > 0 && axp20x_set_voltage_min_design(axp20x_batt,
             vmin))
   dev_err(&pdev->dev,
    "couldn't set voltage_min_design\n");


  axp20x_batt->max_ccc = ccc;

  if (ccc <= 0 || axp20x_set_constant_charge_current(axp20x_batt,
           ccc)) {
   dev_err(&pdev->dev,
    "couldn't set constant charge current from DT: fallback to minimum value\n");
   ccc = 300000;
   axp20x_batt->max_ccc = ccc;
   axp20x_set_constant_charge_current(axp20x_batt, ccc);
  }
 }





 axp20x_get_constant_charge_current(axp20x_batt,
        &axp20x_batt->max_ccc);

 return 0;
}
