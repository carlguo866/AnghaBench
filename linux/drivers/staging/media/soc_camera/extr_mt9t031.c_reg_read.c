
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 int i2c_smbus_read_word_swapped (struct i2c_client*,int const) ;

__attribute__((used)) static int reg_read(struct i2c_client *client, const u8 reg)
{
 return i2c_smbus_read_word_swapped(client, reg);
}
