
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isl6405 {int config; int override_or; int override_and; int i2c; int i2c_addr; } ;
struct i2c_msg {int* buf; int len; int flags; int addr; } ;
struct dvb_frontend {scalar_t__ sec_priv; } ;


 int EIO ;
 int ISL6405_LLC1 ;
 int ISL6405_LLC2 ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int isl6405_enable_high_lnb_voltage(struct dvb_frontend *fe, long arg)
{
 struct isl6405 *isl6405 = (struct isl6405 *) fe->sec_priv;
 struct i2c_msg msg = { .addr = isl6405->i2c_addr, .flags = 0,
    .buf = &isl6405->config,
    .len = sizeof(isl6405->config) };

 if (isl6405->override_or & 0x80) {
  if (arg)
   isl6405->config |= ISL6405_LLC2;
  else
   isl6405->config &= ~ISL6405_LLC2;
 } else {
  if (arg)
   isl6405->config |= ISL6405_LLC1;
  else
   isl6405->config &= ~ISL6405_LLC1;
 }
 isl6405->config |= isl6405->override_or;
 isl6405->config &= isl6405->override_and;

 return (i2c_transfer(isl6405->i2c, &msg, 1) == 1) ? 0 : -EIO;
}
