
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_adapter {int dummy; } ;


 int I2C_FUNC_I2C ;
 int I2C_FUNC_PROTOCOL_MANGLING ;
 int I2C_FUNC_SMBUS_BLOCK_DATA ;
 int I2C_FUNC_SMBUS_EMUL ;

__attribute__((used)) static u32 fsi_i2c_functionality(struct i2c_adapter *adap)
{
 return I2C_FUNC_I2C | I2C_FUNC_PROTOCOL_MANGLING |
  I2C_FUNC_SMBUS_EMUL | I2C_FUNC_SMBUS_BLOCK_DATA;
}
