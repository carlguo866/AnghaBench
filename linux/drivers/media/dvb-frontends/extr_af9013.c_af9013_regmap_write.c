
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_client {int dev; } ;
struct af9013_state {scalar_t__ ts_mode; } ;


 scalar_t__ AF9013_TS_MODE_USB ;
 int af9013_wregs (struct i2c_client*,int,int,int*,unsigned int const,int) ;
 int dev_dbg (int *,char*,int) ;
 struct af9013_state* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static int af9013_regmap_write(void *context, const void *data, size_t count)
{
 struct i2c_client *client = context;
 struct af9013_state *state = i2c_get_clientdata(client);
 int ret, i;
 u8 cmd;
 u8 lock = !((u8 *)data)[0];
 u16 reg = ((u8 *)data)[1] << 8 | ((u8 *)data)[2] << 0;
 u8 *val = &((u8 *)data)[3];
 const unsigned int len = count - 3;

 if (state->ts_mode == AF9013_TS_MODE_USB && (reg & 0xff00) != 0xae00) {
  cmd = 0 << 7|0 << 6|(len - 1) << 2|1 << 1|1 << 0;
  ret = af9013_wregs(client, cmd, reg, val, len, lock);
  if (ret)
   goto err;
 } else if (reg >= 0x5100 && reg < 0x8fff) {

  cmd = 1 << 7|1 << 6|(len - 1) << 2|1 << 1|1 << 0;
  ret = af9013_wregs(client, cmd, reg, val, len, lock);
  if (ret)
   goto err;
 } else {
  cmd = 0 << 7|0 << 6|(1 - 1) << 2|1 << 1|1 << 0;
  for (i = 0; i < len; i++) {
   ret = af9013_wregs(client, cmd, reg + i, val + i, 1,
        lock);
   if (ret)
    goto err;
  }
 }

 return 0;
err:
 dev_dbg(&client->dev, "failed %d\n", ret);
 return ret;
}
