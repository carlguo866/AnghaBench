
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct wm831x_pdata {int wm831x_num; int * ldo; } ;
struct TYPE_7__ {int id; int enable_mask; int min_uV; int uV_step; int enable_time; int enable_reg; int vsel_mask; scalar_t__ vsel_reg; int owner; int * ops; scalar_t__ n_voltages; int type; int supply_name; int name; } ;
struct wm831x_ldo {int regulator; TYPE_2__ desc; scalar_t__ base; int supply_name; int name; struct wm831x* wm831x; } ;
struct wm831x {int dev; int regmap; } ;
struct resource {scalar_t__ start; } ;
struct regulator_config {int regmap; struct wm831x_ldo* driver_data; int init_data; int dev; } ;
struct TYPE_6__ {int parent; } ;
struct platform_device {int id; TYPE_1__ dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_REG ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int REGULATOR_VOLTAGE ;
 int THIS_MODULE ;
 scalar_t__ WM831X_ALIVE_LDO_MAX_SELECTOR ;
 scalar_t__ WM831X_ALIVE_LDO_ON_CONTROL ;
 int WM831X_LDO11_ON_VSEL_MASK ;
 int WM831X_LDO_ENABLE ;
 int dev_dbg (TYPE_1__*,char*,int) ;
 int dev_err (TYPE_1__*,char*,...) ;
 struct wm831x* dev_get_drvdata (int ) ;
 struct wm831x_pdata* dev_get_platdata (int ) ;
 struct wm831x_ldo* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_regulator_register (TYPE_1__*,TYPE_2__*,struct regulator_config*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct wm831x_ldo*) ;
 int snprintf (int ,int,char*,int) ;
 int wm831x_alive_ldo_ops ;

__attribute__((used)) static int wm831x_alive_ldo_probe(struct platform_device *pdev)
{
 struct wm831x *wm831x = dev_get_drvdata(pdev->dev.parent);
 struct wm831x_pdata *pdata = dev_get_platdata(wm831x->dev);
 struct regulator_config config = { };
 int id;
 struct wm831x_ldo *ldo;
 struct resource *res;
 int ret;

 if (pdata && pdata->wm831x_num)
  id = (pdata->wm831x_num * 10) + 1;
 else
  id = 0;
 id = pdev->id - id;


 dev_dbg(&pdev->dev, "Probing LDO%d\n", id + 1);

 ldo = devm_kzalloc(&pdev->dev, sizeof(struct wm831x_ldo), GFP_KERNEL);
 if (!ldo)
  return -ENOMEM;

 ldo->wm831x = wm831x;

 res = platform_get_resource(pdev, IORESOURCE_REG, 0);
 if (res == ((void*)0)) {
  dev_err(&pdev->dev, "No REG resource\n");
  ret = -EINVAL;
  goto err;
 }
 ldo->base = res->start;

 snprintf(ldo->name, sizeof(ldo->name), "LDO%d", id + 1);
 ldo->desc.name = ldo->name;

 snprintf(ldo->supply_name, sizeof(ldo->supply_name),
   "LDO%dVDD", id + 1);
 ldo->desc.supply_name = ldo->supply_name;

 ldo->desc.id = id;
 ldo->desc.type = REGULATOR_VOLTAGE;
 ldo->desc.n_voltages = WM831X_ALIVE_LDO_MAX_SELECTOR + 1;
 ldo->desc.ops = &wm831x_alive_ldo_ops;
 ldo->desc.owner = THIS_MODULE;
 ldo->desc.vsel_reg = ldo->base + WM831X_ALIVE_LDO_ON_CONTROL;
 ldo->desc.vsel_mask = WM831X_LDO11_ON_VSEL_MASK;
 ldo->desc.enable_reg = WM831X_LDO_ENABLE;
 ldo->desc.enable_mask = 1 << id;
 ldo->desc.min_uV = 800000;
 ldo->desc.uV_step = 50000;
 ldo->desc.enable_time = 1000;

 config.dev = pdev->dev.parent;
 if (pdata)
  config.init_data = pdata->ldo[id];
 config.driver_data = ldo;
 config.regmap = wm831x->regmap;

 ldo->regulator = devm_regulator_register(&pdev->dev, &ldo->desc,
       &config);
 if (IS_ERR(ldo->regulator)) {
  ret = PTR_ERR(ldo->regulator);
  dev_err(wm831x->dev, "Failed to register LDO%d: %d\n",
   id + 1, ret);
  goto err;
 }

 platform_set_drvdata(pdev, ldo);

 return 0;

err:
 return ret;
}
