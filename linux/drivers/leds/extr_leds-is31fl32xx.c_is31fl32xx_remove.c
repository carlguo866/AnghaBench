
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct is31fl32xx_priv {int dummy; } ;
struct i2c_client {int dummy; } ;


 struct is31fl32xx_priv* i2c_get_clientdata (struct i2c_client*) ;
 int is31fl32xx_reset_regs (struct is31fl32xx_priv*) ;

__attribute__((used)) static int is31fl32xx_remove(struct i2c_client *client)
{
 struct is31fl32xx_priv *priv = i2c_get_clientdata(client);

 return is31fl32xx_reset_regs(priv);
}
