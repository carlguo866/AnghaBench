
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_msg {int len; char* buf; scalar_t__ flags; int addr; } ;
struct i2c_client {int adapter; int addr; } ;


 scalar_t__ I2C_M_RD ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

u8 cx25840_read(struct i2c_client *client, u16 addr)
{
 struct i2c_msg msgs[2];
 u8 tx_buf[2], rx_buf[1];


 tx_buf[0] = addr >> 8;
 tx_buf[1] = addr & 0xff;
 msgs[0].addr = client->addr;
 msgs[0].flags = 0;
 msgs[0].len = 2;
 msgs[0].buf = (char *)tx_buf;


 msgs[1].addr = client->addr;
 msgs[1].flags = I2C_M_RD;
 msgs[1].len = 1;
 msgs[1].buf = (char *)rx_buf;

 if (i2c_transfer(client->adapter, msgs, 2) < 2)
  return 0;

 return rx_buf[0];
}
