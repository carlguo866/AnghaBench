
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt9m111 {int powered; } ;
struct i2c_client {int dummy; } ;


 int MT9M111_RESET_CHIP_ENABLE ;
 int RESET ;
 int reg_set (int ,int ) ;
 struct mt9m111* to_mt9m111 (struct i2c_client*) ;

__attribute__((used)) static int mt9m111_enable(struct i2c_client *client)
{
 struct mt9m111 *mt9m111 = to_mt9m111(client);
 int ret;

 ret = reg_set(RESET, MT9M111_RESET_CHIP_ENABLE);
 if (!ret)
  mt9m111->powered = 1;
 return ret;
}
