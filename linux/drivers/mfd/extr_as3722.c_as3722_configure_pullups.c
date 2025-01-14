
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct as3722 {int dev; scalar_t__ en_intern_i2c_pullup; scalar_t__ en_intern_int_pullup; } ;


 int AS3722_I2C_PULL_UP ;
 int AS3722_INT_PULL_UP ;
 int AS3722_IOVOLTAGE_REG ;
 int as3722_update_bits (struct as3722*,int ,int,int) ;
 int dev_err (int ,char*,int) ;

__attribute__((used)) static int as3722_configure_pullups(struct as3722 *as3722)
{
 int ret;
 u32 val = 0;

 if (as3722->en_intern_int_pullup)
  val |= AS3722_INT_PULL_UP;
 if (as3722->en_intern_i2c_pullup)
  val |= AS3722_I2C_PULL_UP;

 ret = as3722_update_bits(as3722, AS3722_IOVOLTAGE_REG,
   AS3722_INT_PULL_UP | AS3722_I2C_PULL_UP, val);
 if (ret < 0)
  dev_err(as3722->dev, "IOVOLTAGE_REG update failed: %d\n", ret);
 return ret;
}
