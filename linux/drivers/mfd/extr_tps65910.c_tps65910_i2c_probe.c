
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct tps65910_platform_data {int irq; int irq_base; } ;
struct tps65910_board {scalar_t__ pm_off; int irq_base; int irq; } ;
struct tps65910 {unsigned long id; int irq_data; TYPE_1__* dev; int regmap; struct i2c_client* i2c_client; struct tps65910_board* of_plat_data; } ;
struct i2c_device_id {unsigned long driver_data; } ;
struct TYPE_5__ {scalar_t__ of_node; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_1__*,char*,int) ;
 struct tps65910_board* dev_get_platdata (TYPE_1__*) ;
 void* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_mfd_add_devices (TYPE_1__*,int,int ,int ,int *,int ,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_master_send (struct i2c_client*,char*,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct tps65910*) ;
 scalar_t__ pm_power_off ;
 int regmap_irq_get_domain (int ) ;
 int tps65910_ck32k_init (struct tps65910*,struct tps65910_board*) ;
 struct i2c_client* tps65910_i2c_client ;
 int tps65910_irq_init (struct tps65910*,int ,struct tps65910_platform_data*) ;
 struct tps65910_board* tps65910_parse_dt (struct i2c_client*,unsigned long*) ;
 scalar_t__ tps65910_power_off ;
 int tps65910_regmap_config ;
 int tps65910_sleepinit (struct tps65910*,struct tps65910_board*) ;
 int tps65910s ;

__attribute__((used)) static int tps65910_i2c_probe(struct i2c_client *i2c,
         const struct i2c_device_id *id)
{
 struct tps65910 *tps65910;
 struct tps65910_board *pmic_plat_data;
 struct tps65910_board *of_pmic_plat_data = ((void*)0);
 struct tps65910_platform_data *init_data;
 unsigned long chip_id = id->driver_data;
 int ret;

 pmic_plat_data = dev_get_platdata(&i2c->dev);

 if (!pmic_plat_data && i2c->dev.of_node) {
  pmic_plat_data = tps65910_parse_dt(i2c, &chip_id);
  of_pmic_plat_data = pmic_plat_data;
 }

 if (!pmic_plat_data)
  return -EINVAL;

 init_data = devm_kzalloc(&i2c->dev, sizeof(*init_data), GFP_KERNEL);
 if (init_data == ((void*)0))
  return -ENOMEM;

 tps65910 = devm_kzalloc(&i2c->dev, sizeof(*tps65910), GFP_KERNEL);
 if (tps65910 == ((void*)0))
  return -ENOMEM;

 tps65910->of_plat_data = of_pmic_plat_data;
 i2c_set_clientdata(i2c, tps65910);
 tps65910->dev = &i2c->dev;
 tps65910->i2c_client = i2c;
 tps65910->id = chip_id;





 i2c_master_send(i2c, "", 1);
 tps65910->regmap = devm_regmap_init_i2c(i2c, &tps65910_regmap_config);
 if (IS_ERR(tps65910->regmap)) {
  ret = PTR_ERR(tps65910->regmap);
  dev_err(&i2c->dev, "regmap initialization failed: %d\n", ret);
  return ret;
 }

 init_data->irq = pmic_plat_data->irq;
 init_data->irq_base = pmic_plat_data->irq_base;

 tps65910_irq_init(tps65910, init_data->irq, init_data);
 tps65910_ck32k_init(tps65910, pmic_plat_data);
 tps65910_sleepinit(tps65910, pmic_plat_data);

 if (pmic_plat_data->pm_off && !pm_power_off) {
  tps65910_i2c_client = i2c;
  pm_power_off = tps65910_power_off;
 }

 ret = devm_mfd_add_devices(tps65910->dev, -1,
       tps65910s, ARRAY_SIZE(tps65910s),
       ((void*)0), 0,
       regmap_irq_get_domain(tps65910->irq_data));
 if (ret < 0) {
  dev_err(&i2c->dev, "mfd_add_devices failed: %d\n", ret);
  return ret;
 }

 return ret;
}
