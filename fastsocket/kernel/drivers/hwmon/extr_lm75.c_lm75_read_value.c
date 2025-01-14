
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct i2c_client {int dummy; } ;


 scalar_t__ LM75_REG_CONF ;
 int i2c_smbus_read_byte_data (struct i2c_client*,scalar_t__) ;
 int i2c_smbus_read_word_data (struct i2c_client*,scalar_t__) ;
 int swab16 (int) ;

__attribute__((used)) static int lm75_read_value(struct i2c_client *client, u8 reg)
{
 int value;

 if (reg == LM75_REG_CONF)
  return i2c_smbus_read_byte_data(client, reg);

 value = i2c_smbus_read_word_data(client, reg);
 return (value < 0) ? value : swab16(value);
}
