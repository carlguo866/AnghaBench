
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ interface; } ;


 scalar_t__ PHY_INTERFACE_MODE_RGMII_ID ;
 scalar_t__ PHY_INTERFACE_MODE_SGMII ;
 int m88e1145_config_init_rgmii (struct phy_device*) ;
 int m88e1145_config_init_sgmii (struct phy_device*) ;
 int marvell_of_reg_init (struct phy_device*) ;
 int phy_write (struct phy_device*,int,int) ;

__attribute__((used)) static int m88e1145_config_init(struct phy_device *phydev)
{
 int err;


 err = phy_write(phydev, 0x1d, 0x001b);
 if (err < 0)
  return err;

 err = phy_write(phydev, 0x1e, 0x418f);
 if (err < 0)
  return err;

 err = phy_write(phydev, 0x1d, 0x0016);
 if (err < 0)
  return err;

 err = phy_write(phydev, 0x1e, 0xa2da);
 if (err < 0)
  return err;

 if (phydev->interface == PHY_INTERFACE_MODE_RGMII_ID) {
  err = m88e1145_config_init_rgmii(phydev);
  if (err < 0)
   return err;
 }

 if (phydev->interface == PHY_INTERFACE_MODE_SGMII) {
  err = m88e1145_config_init_sgmii(phydev);
  if (err < 0)
   return err;
 }

 err = marvell_of_reg_init(phydev);
 if (err < 0)
  return err;

 return 0;
}
