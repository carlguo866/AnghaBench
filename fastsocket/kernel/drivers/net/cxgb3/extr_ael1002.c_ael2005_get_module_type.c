
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int AEL2005_GPIO_CTRL ;
 int MDIO_MMD_PMAPMD ;
 int ael2xxx_get_module_type (struct cphy*,int) ;
 int phy_modtype_none ;
 int t3_mdio_read (struct cphy*,int ,int ,unsigned int*) ;

__attribute__((used)) static int ael2005_get_module_type(struct cphy *phy, int delay_ms)
{
 int v;
 unsigned int stat;

 v = t3_mdio_read(phy, MDIO_MMD_PMAPMD, AEL2005_GPIO_CTRL, &stat);
 if (v)
  return v;

 if (stat & (1 << 8))
  return phy_modtype_none;

 return ael2xxx_get_module_type(phy, delay_ms);
}
