
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 int EIO ;
 int i2c_smbus_read_i2c_block_data (struct i2c_client const*,int,int,int*) ;

__attribute__((used)) static int rx8025_read_regs(const struct i2c_client *client,
       u8 number, u8 length, u8 *values)
{
 int ret = i2c_smbus_read_i2c_block_data(client, number << 4, length,
      values);
 if (ret != length)
  return ret < 0 ? ret : -EIO;

 return 0;
}
