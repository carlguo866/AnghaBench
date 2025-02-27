
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int eee_broken_modes; int drv; } ;
struct ethtool_eee {int advertised; scalar_t__ eee_enabled; } ;


 int EIO ;
 int MDIO_AN_EEE_ADV ;
 int MDIO_MMD_AN ;
 int MDIO_MMD_PCS ;
 int MDIO_PCS_EEE_ABLE ;
 int ethtool_adv_to_mmd_eee_adv_t (int ) ;
 int phy_read_mmd (struct phy_device*,int ,int ) ;
 int phy_restart_aneg (struct phy_device*) ;
 int phy_write_mmd (struct phy_device*,int ,int ,int) ;

int phy_ethtool_set_eee(struct phy_device *phydev, struct ethtool_eee *data)
{
 int cap, old_adv, adv = 0, ret;

 if (!phydev->drv)
  return -EIO;


 cap = phy_read_mmd(phydev, MDIO_MMD_PCS, MDIO_PCS_EEE_ABLE);
 if (cap < 0)
  return cap;

 old_adv = phy_read_mmd(phydev, MDIO_MMD_AN, MDIO_AN_EEE_ADV);
 if (old_adv < 0)
  return old_adv;

 if (data->eee_enabled) {
  adv = !data->advertised ? cap :
        ethtool_adv_to_mmd_eee_adv_t(data->advertised) & cap;

  adv &= ~phydev->eee_broken_modes;
 }

 if (old_adv != adv) {
  ret = phy_write_mmd(phydev, MDIO_MMD_AN, MDIO_AN_EEE_ADV, adv);
  if (ret < 0)
   return ret;




  ret = phy_restart_aneg(phydev);
  if (ret < 0)
   return ret;
 }

 return 0;
}
