
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct mii_bus {struct ag71xx_mdio* priv; TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct ag71xx_mdio {int mii_regmap; } ;


 int AG71XX_REG_MII_CFG ;
 int MII_CFG_CLK_DIV_10 ;
 int MII_CFG_CLK_DIV_28 ;
 int MII_CFG_CLK_DIV_58 ;
 int MII_CFG_RESET ;
 scalar_t__ ag71xx_mdio_get_divider (struct device_node*,int*) ;
 scalar_t__ of_device_is_compatible (struct device_node*,char*) ;
 int of_property_read_bool (struct device_node*,char*) ;
 int regmap_write (int ,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int ag71xx_mdio_reset(struct mii_bus *bus)
{
 struct device_node *np = bus->dev.of_node;
 struct ag71xx_mdio *am = bus->priv;
 bool builtin_switch;
 u32 t;

 builtin_switch = of_property_read_bool(np, "builtin-switch");

 if (ag71xx_mdio_get_divider(np, &t)) {
  if (of_device_is_compatible(np, "qca,ar9340-mdio"))
   t = MII_CFG_CLK_DIV_58;
  else if (builtin_switch)
   t = MII_CFG_CLK_DIV_10;
  else
   t = MII_CFG_CLK_DIV_28;
 }

 regmap_write(am->mii_regmap, AG71XX_REG_MII_CFG, t | MII_CFG_RESET);
 udelay(100);

 regmap_write(am->mii_regmap, AG71XX_REG_MII_CFG, t);
 udelay(100);

 return 0;
}
