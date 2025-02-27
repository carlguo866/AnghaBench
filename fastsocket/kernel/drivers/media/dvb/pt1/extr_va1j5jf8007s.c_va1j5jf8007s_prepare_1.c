
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int write_buf ;
typedef int u8 ;
struct va1j5jf8007s_state {int adap; TYPE_1__* config; } ;
struct i2c_msg {int addr; int len; int* buf; scalar_t__ flags; } ;
typedef int read_buf ;
struct TYPE_2__ {int demod_address; } ;


 int EIO ;
 int EREMOTEIO ;
 scalar_t__ I2C_M_RD ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int va1j5jf8007s_prepare_1(struct va1j5jf8007s_state *state)
{
 u8 addr;
 u8 write_buf[1], read_buf[1];
 struct i2c_msg msgs[2];

 addr = state->config->demod_address;

 write_buf[0] = 0x07;

 msgs[0].addr = addr;
 msgs[0].flags = 0;
 msgs[0].len = sizeof(write_buf);
 msgs[0].buf = write_buf;

 msgs[1].addr = addr;
 msgs[1].flags = I2C_M_RD;
 msgs[1].len = sizeof(read_buf);
 msgs[1].buf = read_buf;

 if (i2c_transfer(state->adap, msgs, 2) != 2)
  return -EREMOTEIO;

 if (read_buf[0] != 0x41)
  return -EIO;

 return 0;
}
