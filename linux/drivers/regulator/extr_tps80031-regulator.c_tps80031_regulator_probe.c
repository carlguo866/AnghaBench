
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct tps80031_regulator_platform_data {int ext_ctrl_flag; int config_flags; int * reg_init_data; } ;
struct tps80031_regulator {TYPE_1__* rinfo; int ext_ctrl_flag; int config_flags; TYPE_2__* dev; } ;
struct tps80031_platform_data {struct tps80031_regulator_platform_data** regulator_pdata; } ;
struct tps80031 {int * regmap; } ;
struct regulator_dev {int dummy; } ;
struct regulator_config {int * init_data; int regmap; struct tps80031_regulator* driver_data; TYPE_2__* dev; } ;
struct TYPE_7__ {int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_8__ {int name; } ;
struct TYPE_6__ {size_t volt_id; TYPE_3__ desc; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regulator_dev*) ;
 int PTR_ERR (struct regulator_dev*) ;
 int TPS80031_REGULATOR_MAX ;
 int check_smps_mode_mult (int ,struct tps80031_regulator*) ;
 int dev_err (TYPE_2__*,char*,...) ;
 struct tps80031* dev_get_drvdata (int ) ;
 struct tps80031_platform_data* dev_get_platdata (int ) ;
 struct tps80031_regulator* devm_kcalloc (TYPE_2__*,int,int,int ) ;
 struct regulator_dev* devm_regulator_register (TYPE_2__*,TYPE_3__*,struct regulator_config*) ;
 int platform_set_drvdata (struct platform_device*,struct tps80031_regulator*) ;
 int tps80031_power_req_config (int ,struct tps80031_regulator*,struct tps80031_regulator_platform_data*) ;
 int tps80031_regulator_config (int ,struct tps80031_regulator*,struct tps80031_regulator_platform_data*) ;
 TYPE_1__* tps80031_rinfo ;

__attribute__((used)) static int tps80031_regulator_probe(struct platform_device *pdev)
{
 struct tps80031_platform_data *pdata;
 struct tps80031_regulator_platform_data *tps_pdata;
 struct tps80031_regulator *ri;
 struct tps80031_regulator *pmic;
 struct regulator_dev *rdev;
 struct regulator_config config = { };
 struct tps80031 *tps80031_mfd = dev_get_drvdata(pdev->dev.parent);
 int ret;
 int num;

 pdata = dev_get_platdata(pdev->dev.parent);

 if (!pdata) {
  dev_err(&pdev->dev, "No platform data\n");
  return -EINVAL;
 }

 pmic = devm_kcalloc(&pdev->dev,
   TPS80031_REGULATOR_MAX, sizeof(*pmic), GFP_KERNEL);
 if (!pmic)
  return -ENOMEM;

 for (num = 0; num < TPS80031_REGULATOR_MAX; ++num) {
  tps_pdata = pdata->regulator_pdata[num];
  ri = &pmic[num];
  ri->rinfo = &tps80031_rinfo[num];
  ri->dev = &pdev->dev;

  check_smps_mode_mult(pdev->dev.parent, ri);
  config.dev = &pdev->dev;
  config.init_data = ((void*)0);
  config.driver_data = ri;
  config.regmap = tps80031_mfd->regmap[ri->rinfo->volt_id];

  if (tps_pdata) {
   config.init_data = tps_pdata->reg_init_data;
   ri->config_flags = tps_pdata->config_flags;
   ri->ext_ctrl_flag = tps_pdata->ext_ctrl_flag;
   ret = tps80031_regulator_config(pdev->dev.parent,
     ri, tps_pdata);
   if (ret < 0) {
    dev_err(&pdev->dev,
     "regulator config failed, e %d\n", ret);
    return ret;
   }

   ret = tps80031_power_req_config(pdev->dev.parent,
     ri, tps_pdata);
   if (ret < 0) {
    dev_err(&pdev->dev,
     "pwr_req config failed, err %d\n", ret);
    return ret;
   }
  }
  rdev = devm_regulator_register(&pdev->dev, &ri->rinfo->desc,
            &config);
  if (IS_ERR(rdev)) {
   dev_err(&pdev->dev,
    "register regulator failed %s\n",
     ri->rinfo->desc.name);
   return PTR_ERR(rdev);
  }
 }

 platform_set_drvdata(pdev, pmic);
 return 0;
}
