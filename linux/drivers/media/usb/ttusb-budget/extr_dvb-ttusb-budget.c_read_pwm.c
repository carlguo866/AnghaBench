
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ttusb {int i2c_adap; } ;
struct i2c_msg {int addr; int* buf; int len; int flags; } ;


 int I2C_M_RD ;
 int i2c_transfer (int *,struct i2c_msg*,int) ;

__attribute__((used)) static u8 read_pwm(struct ttusb* ttusb)
{
 u8 b = 0xff;
 u8 pwm;
 struct i2c_msg msg[] = { { .addr = 0x50,.flags = 0,.buf = &b,.len = 1 },
    { .addr = 0x50,.flags = I2C_M_RD,.buf = &pwm,.len = 1} };

 if ((i2c_transfer(&ttusb->i2c_adap, msg, 2) != 2) || (pwm == 0xff))
  pwm = 0x48;

 return pwm;
}
