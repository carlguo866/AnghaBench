
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct resource {unsigned int start; } ;
struct regulator_config {scalar_t__ of_node; struct pbias_regulator_data* driver_data; scalar_t__ init_data; TYPE_2__* dev; struct regmap* regmap; } ;
struct regmap {int dummy; } ;
struct TYPE_11__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_12__ {unsigned int vsel_reg; unsigned int enable_reg; int disable_val; int enable_val; int enable_mask; int vsel_mask; int enable_time; int n_voltages; int volt_table; int * ops; int type; int owner; int name; } ;
struct pbias_regulator_data {struct regmap* dev; TYPE_6__ desc; struct pbias_reg_info const* info; struct regmap* syscon; } ;
struct pbias_reg_info {int disable_val; int enable; int enable_mask; int vmode; int enable_time; int n_voltages; int pbias_volt_table; int name; } ;
struct pbias_of_data {unsigned int offset; } ;
struct of_device_id {struct pbias_of_data* data; } ;
struct device_node {int dummy; } ;
struct TYPE_10__ {scalar_t__ of_node; scalar_t__ init_data; struct pbias_reg_info* driver_data; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PBIAS_NUM_REGS ;
 int PTR_ERR (struct regmap*) ;
 int REGULATOR_VOLTAGE ;
 int THIS_MODULE ;
 int dev_WARN (TYPE_2__*,char*) ;
 int dev_err (TYPE_2__*,char*,int) ;
 struct pbias_regulator_data* devm_kcalloc (TYPE_2__*,int,int,int ) ;
 struct regmap* devm_regulator_register (TYPE_2__*,TYPE_6__*,struct regulator_config*) ;
 struct of_device_id* of_match_device (int ,TYPE_2__*) ;
 int of_match_ptr (int ) ;
 int of_regulator_match (TYPE_2__*,struct device_node*,TYPE_1__*,int) ;
 TYPE_1__* pbias_matches ;
 int pbias_of_match ;
 int pbias_regulator_voltage_ops ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct pbias_regulator_data*) ;
 struct regmap* syscon_regmap_lookup_by_phandle (struct device_node*,char*) ;

__attribute__((used)) static int pbias_regulator_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 struct pbias_regulator_data *drvdata;
 struct resource *res;
 struct regulator_config cfg = { };
 struct regmap *syscon;
 const struct pbias_reg_info *info;
 int ret = 0;
 int count, idx, data_idx = 0;
 const struct of_device_id *match;
 const struct pbias_of_data *data;
 unsigned int offset;

 count = of_regulator_match(&pdev->dev, np, pbias_matches,
      PBIAS_NUM_REGS);
 if (count < 0)
  return count;

 drvdata = devm_kcalloc(&pdev->dev,
          count, sizeof(struct pbias_regulator_data),
          GFP_KERNEL);
 if (!drvdata)
  return -ENOMEM;

 syscon = syscon_regmap_lookup_by_phandle(np, "syscon");
 if (IS_ERR(syscon))
  return PTR_ERR(syscon);

 match = of_match_device(of_match_ptr(pbias_of_match), &pdev->dev);
 if (match && match->data) {
  data = match->data;
  offset = data->offset;
 } else {
  res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
  if (!res)
   return -EINVAL;

  offset = res->start;
  dev_WARN(&pdev->dev,
    "using legacy dt data for pbias offset\n");
 }

 cfg.regmap = syscon;
 cfg.dev = &pdev->dev;

 for (idx = 0; idx < PBIAS_NUM_REGS && data_idx < count; idx++) {
  if (!pbias_matches[idx].init_data ||
   !pbias_matches[idx].of_node)
   continue;

  info = pbias_matches[idx].driver_data;
  if (!info)
   return -ENODEV;

  drvdata[data_idx].syscon = syscon;
  drvdata[data_idx].info = info;
  drvdata[data_idx].desc.name = info->name;
  drvdata[data_idx].desc.owner = THIS_MODULE;
  drvdata[data_idx].desc.type = REGULATOR_VOLTAGE;
  drvdata[data_idx].desc.ops = &pbias_regulator_voltage_ops;
  drvdata[data_idx].desc.volt_table = info->pbias_volt_table;
  drvdata[data_idx].desc.n_voltages = info->n_voltages;
  drvdata[data_idx].desc.enable_time = info->enable_time;
  drvdata[data_idx].desc.vsel_reg = offset;
  drvdata[data_idx].desc.vsel_mask = info->vmode;
  drvdata[data_idx].desc.enable_reg = offset;
  drvdata[data_idx].desc.enable_mask = info->enable_mask;
  drvdata[data_idx].desc.enable_val = info->enable;
  drvdata[data_idx].desc.disable_val = info->disable_val;

  cfg.init_data = pbias_matches[idx].init_data;
  cfg.driver_data = &drvdata[data_idx];
  cfg.of_node = pbias_matches[idx].of_node;

  drvdata[data_idx].dev = devm_regulator_register(&pdev->dev,
     &drvdata[data_idx].desc, &cfg);
  if (IS_ERR(drvdata[data_idx].dev)) {
   ret = PTR_ERR(drvdata[data_idx].dev);
   dev_err(&pdev->dev,
    "Failed to register regulator: %d\n", ret);
   goto err_regulator;
  }
  data_idx++;
 }

 platform_set_drvdata(pdev, drvdata);

err_regulator:
 return ret;
}
