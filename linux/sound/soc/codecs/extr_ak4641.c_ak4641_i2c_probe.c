
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct i2c_device_id {int dummy; } ;
struct TYPE_3__ {struct ak4641_platform_data* platform_data; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct ak4641_priv {int regmap; } ;
struct ak4641_platform_data {int gpio_power; int gpio_npdn; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOF_OUT_INIT_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int ak4641_dai ;
 int ak4641_regmap ;
 struct ak4641_priv* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_snd_soc_register_component (TYPE_1__*,int *,int ,int ) ;
 int gpio_free (int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_request_one (int ,int ,char*) ;
 int gpio_set_value (int ,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct ak4641_priv*) ;
 int soc_component_dev_ak4641 ;
 int udelay (int) ;

__attribute__((used)) static int ak4641_i2c_probe(struct i2c_client *i2c,
       const struct i2c_device_id *id)
{
 struct ak4641_platform_data *pdata = i2c->dev.platform_data;
 struct ak4641_priv *ak4641;
 int ret;

 ak4641 = devm_kzalloc(&i2c->dev, sizeof(struct ak4641_priv),
         GFP_KERNEL);
 if (!ak4641)
  return -ENOMEM;

 ak4641->regmap = devm_regmap_init_i2c(i2c, &ak4641_regmap);
 if (IS_ERR(ak4641->regmap))
  return PTR_ERR(ak4641->regmap);

 if (pdata) {
  if (gpio_is_valid(pdata->gpio_power)) {
   ret = gpio_request_one(pdata->gpio_power,
     GPIOF_OUT_INIT_LOW, "ak4641 power");
   if (ret)
    goto err_out;
  }
  if (gpio_is_valid(pdata->gpio_npdn)) {
   ret = gpio_request_one(pdata->gpio_npdn,
     GPIOF_OUT_INIT_LOW, "ak4641 npdn");
   if (ret)
    goto err_gpio;

   udelay(1);
   gpio_set_value(pdata->gpio_npdn, 1);
  }
 }

 i2c_set_clientdata(i2c, ak4641);

 ret = devm_snd_soc_register_component(&i2c->dev,
    &soc_component_dev_ak4641,
    ak4641_dai, ARRAY_SIZE(ak4641_dai));
 if (ret != 0)
  goto err_gpio2;

 return 0;

err_gpio2:
 if (pdata) {
  if (gpio_is_valid(pdata->gpio_power))
   gpio_set_value(pdata->gpio_power, 0);
  if (gpio_is_valid(pdata->gpio_npdn))
   gpio_free(pdata->gpio_npdn);
 }
err_gpio:
 if (pdata && gpio_is_valid(pdata->gpio_power))
  gpio_free(pdata->gpio_power);
err_out:
 return ret;
}
