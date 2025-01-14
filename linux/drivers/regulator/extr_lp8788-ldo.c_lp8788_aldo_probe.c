
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct regulator_dev {int dummy; } ;
struct regulator_config {int regmap; struct lp8788_ldo* driver_data; int * init_data; int dev; scalar_t__ ena_gpiod; } ;
struct TYPE_6__ {int parent; } ;
struct platform_device {int id; TYPE_2__ dev; } ;
struct lp8788_ldo {struct regulator_dev* regulator; scalar_t__ ena_gpiod; struct lp8788* lp; } ;
struct lp8788 {int regmap; TYPE_1__* pdata; } ;
struct TYPE_5__ {int ** aldo_data; } ;


 scalar_t__ ALDO1 ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regulator_dev*) ;
 int PTR_ERR (struct regulator_dev*) ;
 int dev_err (TYPE_2__*,char*,int,int) ;
 struct lp8788* dev_get_drvdata (int ) ;
 struct lp8788_ldo* devm_kzalloc (TYPE_2__*,int,int ) ;
 struct regulator_dev* devm_regulator_register (TYPE_2__*,int *,struct regulator_config*) ;
 int * lp8788_aldo_desc ;
 int lp8788_config_ldo_enable_mode (struct platform_device*,struct lp8788_ldo*,scalar_t__) ;
 int platform_set_drvdata (struct platform_device*,struct lp8788_ldo*) ;

__attribute__((used)) static int lp8788_aldo_probe(struct platform_device *pdev)
{
 struct lp8788 *lp = dev_get_drvdata(pdev->dev.parent);
 int id = pdev->id;
 struct lp8788_ldo *ldo;
 struct regulator_config cfg = { };
 struct regulator_dev *rdev;
 int ret;

 ldo = devm_kzalloc(&pdev->dev, sizeof(struct lp8788_ldo), GFP_KERNEL);
 if (!ldo)
  return -ENOMEM;

 ldo->lp = lp;
 ret = lp8788_config_ldo_enable_mode(pdev, ldo, id + ALDO1);
 if (ret)
  return ret;

 if (ldo->ena_gpiod)
  cfg.ena_gpiod = ldo->ena_gpiod;

 cfg.dev = pdev->dev.parent;
 cfg.init_data = lp->pdata ? lp->pdata->aldo_data[id] : ((void*)0);
 cfg.driver_data = ldo;
 cfg.regmap = lp->regmap;

 rdev = devm_regulator_register(&pdev->dev, &lp8788_aldo_desc[id], &cfg);
 if (IS_ERR(rdev)) {
  ret = PTR_ERR(rdev);
  dev_err(&pdev->dev, "ALDO%d regulator register err = %d\n",
    id + 1, ret);
  return ret;
 }

 ldo->regulator = rdev;
 platform_set_drvdata(pdev, ldo);

 return 0;
}
