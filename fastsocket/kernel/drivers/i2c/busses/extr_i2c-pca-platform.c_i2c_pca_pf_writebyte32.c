
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_pca_pf_data {scalar_t__ reg_base; } ;


 int iowrite8 (int,scalar_t__) ;

__attribute__((used)) static void i2c_pca_pf_writebyte32(void *pd, int reg, int val)
{
 struct i2c_pca_pf_data *i2c = pd;
 iowrite8(val, i2c->reg_base + reg * 4);
}
