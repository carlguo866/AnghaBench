
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct regulator_desc {int id; } ;
struct TYPE_7__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct ab3100_platform_data {int * reg_initvals; } ;


 int AB3100_LDO_D ;
 int AB3100_NUM_REGULATORS ;
 int ARRAY_SIZE (int *) ;
 int * ab3100_reg_init_order ;
 struct regulator_desc* ab3100_regulator_desc ;
 int * ab3100_regulator_matches ;
 int ab3100_regulator_of_probe (struct platform_device*,struct device_node*) ;
 int ab3100_regulator_register (struct platform_device*,struct ab3100_platform_data*,int *,int *,int ) ;
 int abx500_get_register_interruptible (TYPE_1__*,int ,int ,int*) ;
 int abx500_set_register_interruptible (TYPE_1__*,int ,int ,int ) ;
 int dev_err (TYPE_1__*,char*,...) ;
 struct ab3100_platform_data* dev_get_platdata (TYPE_1__*) ;
 int dev_notice (TYPE_1__*,char*) ;
 int of_regulator_match (TYPE_1__*,struct device_node*,int *,int) ;

__attribute__((used)) static int ab3100_regulators_probe(struct platform_device *pdev)
{
 struct ab3100_platform_data *plfdata = dev_get_platdata(&pdev->dev);
 struct device_node *np = pdev->dev.of_node;
 int err = 0;
 u8 data;
 int i;


 err = abx500_get_register_interruptible(&pdev->dev, 0,
      AB3100_LDO_D, &data);
 if (err) {
  dev_err(&pdev->dev, "could not read initial status of LDO_D\n");
  return err;
 }
 if (data & 0x10)
  dev_notice(&pdev->dev,
      "chip is already in active mode (Warm start)\n");
 else
  dev_notice(&pdev->dev,
      "chip is in inactive mode (Cold start)\n");

 if (np) {
  err = of_regulator_match(&pdev->dev, np,
      ab3100_regulator_matches,
      ARRAY_SIZE(ab3100_regulator_matches));
  if (err < 0) {
   dev_err(&pdev->dev,
    "Error parsing regulator init data: %d\n", err);
   return err;
  }
  return ab3100_regulator_of_probe(pdev, np);
 }


 for (i = 0; i < ARRAY_SIZE(ab3100_reg_init_order); i++) {
  err = abx500_set_register_interruptible(&pdev->dev, 0,
     ab3100_reg_init_order[i],
     plfdata->reg_initvals[i]);
  if (err) {
   dev_err(&pdev->dev, "regulator initialization failed with error %d\n",
    err);
   return err;
  }
 }


 for (i = 0; i < AB3100_NUM_REGULATORS; i++) {
  const struct regulator_desc *desc = &ab3100_regulator_desc[i];

  err = ab3100_regulator_register(pdev, plfdata, ((void*)0), ((void*)0),
      desc->id);
  if (err)
   return err;
 }

 return 0;
}
