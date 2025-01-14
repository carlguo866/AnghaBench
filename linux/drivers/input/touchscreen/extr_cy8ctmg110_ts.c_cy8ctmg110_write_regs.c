
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct cy8ctmg110 {struct i2c_client* client; } ;


 int BUG_ON (int) ;
 int EIO ;
 int dev_err (int *,char*) ;
 int i2c_master_send (struct i2c_client*,unsigned char*,unsigned char) ;
 int memcpy (unsigned char*,unsigned char*,unsigned char) ;

__attribute__((used)) static int cy8ctmg110_write_regs(struct cy8ctmg110 *tsc, unsigned char reg,
  unsigned char len, unsigned char *value)
{
 struct i2c_client *client = tsc->client;
 int ret;
 unsigned char i2c_data[6];

 BUG_ON(len > 5);

 i2c_data[0] = reg;
 memcpy(i2c_data + 1, value, len);

 ret = i2c_master_send(client, i2c_data, len + 1);
 if (ret != len + 1) {
  dev_err(&client->dev, "i2c write data cmd failed\n");
  return ret < 0 ? ret : -EIO;
 }

 return 0;
}
