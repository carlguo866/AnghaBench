
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ interface; } ;


 int IP1001_APS_ON ;
 int IP1001_RXPHASE_SEL ;
 int IP1001_SPEC_CTRL_STATUS_2 ;
 int IP1001_TXPHASE_SEL ;
 int IP10XX_SPEC_CTRL_STATUS ;
 scalar_t__ PHY_INTERFACE_MODE_RGMII_ID ;
 scalar_t__ PHY_INTERFACE_MODE_RGMII_RXID ;
 scalar_t__ PHY_INTERFACE_MODE_RGMII_TXID ;
 int ip1xx_reset (struct phy_device*) ;
 scalar_t__ phy_interface_is_rgmii (struct phy_device*) ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int ip1001_config_init(struct phy_device *phydev)
{
 int c;

 c = ip1xx_reset(phydev);
 if (c < 0)
  return c;


 c = phy_read(phydev, IP1001_SPEC_CTRL_STATUS_2);
 if (c < 0)
  return c;
 c |= IP1001_APS_ON;
 c = phy_write(phydev, IP1001_SPEC_CTRL_STATUS_2, c);
 if (c < 0)
  return c;

 if (phy_interface_is_rgmii(phydev)) {

  c = phy_read(phydev, IP10XX_SPEC_CTRL_STATUS);
  if (c < 0)
   return c;

  c &= ~(IP1001_RXPHASE_SEL | IP1001_TXPHASE_SEL);

  if (phydev->interface == PHY_INTERFACE_MODE_RGMII_ID)
   c |= (IP1001_RXPHASE_SEL | IP1001_TXPHASE_SEL);
  else if (phydev->interface == PHY_INTERFACE_MODE_RGMII_RXID)
   c |= IP1001_RXPHASE_SEL;
  else if (phydev->interface == PHY_INTERFACE_MODE_RGMII_TXID)
   c |= IP1001_TXPHASE_SEL;

  c = phy_write(phydev, IP10XX_SPEC_CTRL_STATUS, c);
  if (c < 0)
   return c;
 }

 return 0;
}
