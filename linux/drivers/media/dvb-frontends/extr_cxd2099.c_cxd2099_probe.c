
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regmap_config {int reg_bits; int val_bits; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_4__ {struct cxd2099_cfg* platform_data; } ;
struct i2c_client {TYPE_2__ dev; int addr; } ;
struct cxd2099_cfg {TYPE_1__** en; } ;
struct TYPE_3__ {int * write_data; int * read_data; struct cxd* data; } ;
struct cxd {int lastaddress; int clk_reg_b; int clk_reg_f; int regmap; TYPE_1__ en; int lock; int cfg; struct i2c_client* client; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int buffermode ;
 int dev_info (TYPE_2__*,char*,...) ;
 TYPE_1__ en_templ ;
 int i2c_set_clientdata (struct i2c_client*,struct cxd*) ;
 int init (struct cxd*) ;
 int kfree (struct cxd*) ;
 struct cxd* kzalloc (int,int ) ;
 int memcpy (int *,struct cxd2099_cfg*,int) ;
 int mutex_init (int *) ;
 int regmap_exit (int ) ;
 int regmap_init_i2c (struct i2c_client*,struct regmap_config const*) ;
 int regmap_read (int ,int,unsigned int*) ;

__attribute__((used)) static int cxd2099_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct cxd *ci;
 struct cxd2099_cfg *cfg = client->dev.platform_data;
 static const struct regmap_config rm_cfg = {
  .reg_bits = 8,
  .val_bits = 8,
 };
 unsigned int val;
 int ret;

 ci = kzalloc(sizeof(*ci), GFP_KERNEL);
 if (!ci) {
  ret = -ENOMEM;
  goto err;
 }

 ci->client = client;
 memcpy(&ci->cfg, cfg, sizeof(ci->cfg));

 ci->regmap = regmap_init_i2c(client, &rm_cfg);
 if (IS_ERR(ci->regmap)) {
  ret = PTR_ERR(ci->regmap);
  goto err_kfree;
 }

 ret = regmap_read(ci->regmap, 0x00, &val);
 if (ret < 0) {
  dev_info(&client->dev, "No CXD2099AR detected at 0x%02x\n",
    client->addr);
  goto err_rmexit;
 }

 mutex_init(&ci->lock);
 ci->lastaddress = 0xff;
 ci->clk_reg_b = 0x4a;
 ci->clk_reg_f = 0x1b;

 ci->en = en_templ;
 ci->en.data = ci;
 init(ci);
 dev_info(&client->dev, "Attached CXD2099AR at 0x%02x\n", client->addr);

 *cfg->en = &ci->en;

 if (!buffermode) {
  ci->en.read_data = ((void*)0);
  ci->en.write_data = ((void*)0);
 } else {
  dev_info(&client->dev, "Using CXD2099AR buffer mode");
 }

 i2c_set_clientdata(client, ci);

 return 0;

err_rmexit:
 regmap_exit(ci->regmap);
err_kfree:
 kfree(ci);
err:

 return ret;
}
