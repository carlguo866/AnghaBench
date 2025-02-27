
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct thermal_zone_device {int dummy; } ;
struct tegra_bpmp_thermal_zone {unsigned int idx; int tz_device_update_work; struct thermal_zone_device* tzd; struct tegra_bpmp_thermal* tegra; } ;
struct tegra_bpmp_thermal {int num_zones; struct tegra_bpmp_thermal_zone** zones; struct tegra_bpmp* bpmp; TYPE_1__* dev; } ;
struct tegra_bpmp {int dummy; } ;
struct TYPE_6__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (struct thermal_zone_device*) ;
 int MRQ_THERMAL ;
 int PTR_ERR (struct thermal_zone_device*) ;
 int bpmp_mrq_thermal ;
 int dev_err (TYPE_1__*,char*,int) ;
 struct tegra_bpmp* dev_get_drvdata (int ) ;
 struct tegra_bpmp_thermal_zone** devm_kcalloc (TYPE_1__*,unsigned int,int,int ) ;
 int devm_kfree (TYPE_1__*,struct tegra_bpmp_thermal_zone*) ;
 void* devm_kzalloc (TYPE_1__*,int,int ) ;
 struct thermal_zone_device* devm_thermal_zone_of_sensor_register (TYPE_1__*,unsigned int,struct tegra_bpmp_thermal_zone*,int *) ;
 int platform_set_drvdata (struct platform_device*,struct tegra_bpmp_thermal*) ;
 int tegra_bpmp_of_thermal_ops ;
 int tegra_bpmp_request_mrq (struct tegra_bpmp*,int ,int ,struct tegra_bpmp_thermal*) ;
 int tegra_bpmp_thermal_get_num_zones (struct tegra_bpmp*,unsigned int*) ;
 int tegra_bpmp_thermal_get_temp (struct tegra_bpmp_thermal_zone*,int*) ;
 int tz_device_update_work_fn ;

__attribute__((used)) static int tegra_bpmp_thermal_probe(struct platform_device *pdev)
{
 struct tegra_bpmp *bpmp = dev_get_drvdata(pdev->dev.parent);
 struct tegra_bpmp_thermal *tegra;
 struct thermal_zone_device *tzd;
 unsigned int i, max_num_zones;
 int err;

 tegra = devm_kzalloc(&pdev->dev, sizeof(*tegra), GFP_KERNEL);
 if (!tegra)
  return -ENOMEM;

 tegra->dev = &pdev->dev;
 tegra->bpmp = bpmp;

 err = tegra_bpmp_thermal_get_num_zones(bpmp, &max_num_zones);
 if (err) {
  dev_err(&pdev->dev, "failed to get the number of zones: %d\n",
   err);
  return err;
 }

 tegra->zones = devm_kcalloc(&pdev->dev, max_num_zones,
        sizeof(*tegra->zones), GFP_KERNEL);
 if (!tegra->zones)
  return -ENOMEM;

 for (i = 0; i < max_num_zones; ++i) {
  struct tegra_bpmp_thermal_zone *zone;
  int temp;

  zone = devm_kzalloc(&pdev->dev, sizeof(*zone), GFP_KERNEL);
  if (!zone)
   return -ENOMEM;

  zone->idx = i;
  zone->tegra = tegra;

  err = tegra_bpmp_thermal_get_temp(zone, &temp);
  if (err < 0) {
   devm_kfree(&pdev->dev, zone);
   continue;
  }

  tzd = devm_thermal_zone_of_sensor_register(
   &pdev->dev, i, zone, &tegra_bpmp_of_thermal_ops);
  if (IS_ERR(tzd)) {
   if (PTR_ERR(tzd) == -EPROBE_DEFER)
    return -EPROBE_DEFER;
   devm_kfree(&pdev->dev, zone);
   continue;
  }

  zone->tzd = tzd;
  INIT_WORK(&zone->tz_device_update_work,
     tz_device_update_work_fn);

  tegra->zones[tegra->num_zones++] = zone;
 }

 err = tegra_bpmp_request_mrq(bpmp, MRQ_THERMAL, bpmp_mrq_thermal,
         tegra);
 if (err) {
  dev_err(&pdev->dev, "failed to register mrq handler: %d\n",
   err);
  return err;
 }

 platform_set_drvdata(pdev, tegra);

 return 0;
}
