
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ speed; scalar_t__ autoneg; } ;


 scalar_t__ AUTONEG_DISABLE ;
 scalar_t__ SPEED_100 ;
 int genphy_config_aneg (struct phy_device*) ;
 int phy_write (struct phy_device*,int,int) ;

__attribute__((used)) static int rtl8211_config_aneg(struct phy_device *phydev)
{
 int ret;

 ret = genphy_config_aneg(phydev);
 if (ret < 0)
  return ret;




 if (phydev->speed == SPEED_100 && phydev->autoneg == AUTONEG_DISABLE) {
  phy_write(phydev, 0x17, 0x2138);
  phy_write(phydev, 0x0e, 0x0260);
 } else {
  phy_write(phydev, 0x17, 0x2108);
  phy_write(phydev, 0x0e, 0x0000);
 }

 return 0;
}
