
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tc90522_state {TYPE_1__* i2c_client; } ;
struct i2c_msg {int* buf; int len; int flags; int addr; } ;
struct TYPE_2__ {int adapter; int addr; } ;


 int ARRAY_SIZE (struct i2c_msg*) ;
 int EIO ;
 int I2C_M_RD ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int reg_read(struct tc90522_state *state, u8 reg, u8 *val, u8 len)
{
 struct i2c_msg msgs[2] = {
  {
   .addr = state->i2c_client->addr,
   .flags = 0,
   .buf = &reg,
   .len = 1,
  },
  {
   .addr = state->i2c_client->addr,
   .flags = I2C_M_RD,
   .buf = val,
   .len = len,
  },
 };
 int ret;

 ret = i2c_transfer(state->i2c_client->adapter, msgs, ARRAY_SIZE(msgs));
 if (ret == ARRAY_SIZE(msgs))
  ret = 0;
 else if (ret >= 0)
  ret = -EIO;
 return ret;
}
