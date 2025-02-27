
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_fi2c_priv {scalar_t__ membase; } ;
struct i2c_adapter {int dummy; } ;


 scalar_t__ UNIPHIER_FI2C_BM ;
 int UNIPHIER_FI2C_BM_SCLS ;
 struct uniphier_fi2c_priv* i2c_get_adapdata (struct i2c_adapter*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int uniphier_fi2c_get_scl(struct i2c_adapter *adap)
{
 struct uniphier_fi2c_priv *priv = i2c_get_adapdata(adap);

 return !!(readl(priv->membase + UNIPHIER_FI2C_BM) &
       UNIPHIER_FI2C_BM_SCLS);
}
