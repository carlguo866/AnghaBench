
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int ad5592r_remove (int *) ;

__attribute__((used)) static int ad5593r_i2c_remove(struct i2c_client *i2c)
{
 return ad5592r_remove(&i2c->dev);
}
