
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct max8997_dev {int iolock; } ;
struct i2c_client {int dummy; } ;


 struct max8997_dev* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int max8997_update_reg(struct i2c_client *i2c, u8 reg, u8 val, u8 mask)
{
 struct max8997_dev *max8997 = i2c_get_clientdata(i2c);
 int ret;

 mutex_lock(&max8997->iolock);
 ret = i2c_smbus_read_byte_data(i2c, reg);
 if (ret >= 0) {
  u8 old_val = ret & 0xff;
  u8 new_val = (val & mask) | (old_val & (~mask));
  ret = i2c_smbus_write_byte_data(i2c, reg, new_val);
 }
 mutex_unlock(&max8997->iolock);
 return ret;
}
