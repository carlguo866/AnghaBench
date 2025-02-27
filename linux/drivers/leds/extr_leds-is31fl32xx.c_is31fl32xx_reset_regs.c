
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct is31fl32xx_priv {struct is31fl32xx_chipdef* cdef; } ;
struct is31fl32xx_chipdef {scalar_t__ reset_reg; int (* reset_func ) (struct is31fl32xx_priv*) ;} ;


 scalar_t__ IS31FL32XX_REG_NONE ;
 int is31fl32xx_write (struct is31fl32xx_priv*,scalar_t__,int ) ;
 int stub1 (struct is31fl32xx_priv*) ;

__attribute__((used)) static int is31fl32xx_reset_regs(struct is31fl32xx_priv *priv)
{
 const struct is31fl32xx_chipdef *cdef = priv->cdef;
 int ret;

 if (cdef->reset_reg != IS31FL32XX_REG_NONE) {
  ret = is31fl32xx_write(priv, cdef->reset_reg, 0);
  if (ret)
   return ret;
 }

 if (cdef->reset_func)
  return cdef->reset_func(priv);

 return 0;
}
