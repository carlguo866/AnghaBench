
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct s5c73m3 {int i2c_read_address; struct i2c_client* i2c_client; } ;
struct i2c_client {int dummy; } ;


 int REG_CMDBUF_ADDR ;
 int REG_CMDRD_ADDRH ;
 int REG_CMDRD_ADDRL ;
 int s5c73m3_i2c_read (struct i2c_client*,int ,int *) ;
 int s5c73m3_i2c_write (struct i2c_client*,int ,int) ;

int s5c73m3_read(struct s5c73m3 *state, u32 addr, u16 *data)
{
 struct i2c_client *client = state->i2c_client;
 int ret;

 if ((addr ^ state->i2c_read_address) & 0xffff0000) {
  ret = s5c73m3_i2c_write(client, REG_CMDRD_ADDRH, addr >> 16);
  if (ret < 0) {
   state->i2c_read_address = 0;
   return ret;
  }
 }

 if ((addr ^ state->i2c_read_address) & 0xffff) {
  ret = s5c73m3_i2c_write(client, REG_CMDRD_ADDRL, addr & 0xffff);
  if (ret < 0) {
   state->i2c_read_address = 0;
   return ret;
  }
 }

 state->i2c_read_address = addr;

 ret = s5c73m3_i2c_read(client, REG_CMDBUF_ADDR, data);
 if (ret < 0)
  return ret;

 state->i2c_read_address += 2;

 return ret;
}
