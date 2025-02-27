
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct is31fl32xx_priv {struct is31fl32xx_chipdef* cdef; } ;
struct is31fl32xx_chipdef {scalar_t__ shutdown_reg; int (* sw_shutdown_func ) (struct is31fl32xx_priv*,int) ;} ;


 scalar_t__ IS31FL32XX_REG_NONE ;
 int IS31FL32XX_SHUTDOWN_SSD_DISABLE ;
 int IS31FL32XX_SHUTDOWN_SSD_ENABLE ;
 int is31fl32xx_write (struct is31fl32xx_priv*,scalar_t__,int ) ;
 int stub1 (struct is31fl32xx_priv*,int) ;

__attribute__((used)) static int is31fl32xx_software_shutdown(struct is31fl32xx_priv *priv,
     bool enable)
{
 const struct is31fl32xx_chipdef *cdef = priv->cdef;
 int ret;

 if (cdef->shutdown_reg != IS31FL32XX_REG_NONE) {
  u8 value = enable ? IS31FL32XX_SHUTDOWN_SSD_ENABLE :
        IS31FL32XX_SHUTDOWN_SSD_DISABLE;
  ret = is31fl32xx_write(priv, cdef->shutdown_reg, value);
  if (ret)
   return ret;
 }

 if (cdef->sw_shutdown_func)
  return cdef->sw_shutdown_func(priv, enable);

 return 0;
}
