
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_fi2c_priv {scalar_t__ membase; } ;


 scalar_t__ UNIPHIER_FI2C_RST ;
 int UNIPHIER_FI2C_RST_RST ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void uniphier_fi2c_reset(struct uniphier_fi2c_priv *priv)
{
 writel(UNIPHIER_FI2C_RST_RST, priv->membase + UNIPHIER_FI2C_RST);
}
