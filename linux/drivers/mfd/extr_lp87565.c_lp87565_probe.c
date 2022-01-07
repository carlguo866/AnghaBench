
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_device_id {scalar_t__ data; } ;
struct lp87565 {unsigned int rev; int dev_type; int * dev; int regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;
typedef enum lp87565_device_type { ____Placeholder_lp87565_device_type } lp87565_device_type ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 unsigned int LP87565_OTP_REV_OTP_ID ;
 int LP87565_REG_OTP_REV ;
 int PLATFORM_DEVID_AUTO ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,...) ;
 struct lp87565* devm_kzalloc (int *,int,int ) ;
 int devm_mfd_add_devices (int *,int ,int ,int ,int *,int ,int *) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct lp87565*) ;
 int lp87565_cells ;
 int lp87565_regmap_config ;
 int of_lp87565_match_table ;
 struct of_device_id* of_match_device (int ,int *) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int lp87565_probe(struct i2c_client *client,
    const struct i2c_device_id *ids)
{
 struct lp87565 *lp87565;
 const struct of_device_id *of_id;
 int ret;
 unsigned int otpid;

 lp87565 = devm_kzalloc(&client->dev, sizeof(*lp87565), GFP_KERNEL);
 if (!lp87565)
  return -ENOMEM;

 lp87565->dev = &client->dev;

 lp87565->regmap = devm_regmap_init_i2c(client, &lp87565_regmap_config);
 if (IS_ERR(lp87565->regmap)) {
  ret = PTR_ERR(lp87565->regmap);
  dev_err(lp87565->dev,
   "Failed to initialize register map: %d\n", ret);
  return ret;
 }

 ret = regmap_read(lp87565->regmap, LP87565_REG_OTP_REV, &otpid);
 if (ret) {
  dev_err(lp87565->dev, "Failed to read OTP ID\n");
  return ret;
 }

 lp87565->rev = otpid & LP87565_OTP_REV_OTP_ID;

 of_id = of_match_device(of_lp87565_match_table, &client->dev);
 if (of_id)
  lp87565->dev_type = (enum lp87565_device_type)of_id->data;

 i2c_set_clientdata(client, lp87565);

 return devm_mfd_add_devices(lp87565->dev, PLATFORM_DEVID_AUTO,
        lp87565_cells, ARRAY_SIZE(lp87565_cells),
        ((void*)0), 0, ((void*)0));
}
