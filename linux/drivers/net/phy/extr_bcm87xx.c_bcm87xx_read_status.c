
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int speed; int link; int duplex; } ;


 int BCM87XX_10GBASER_PCS_STATUS ;
 int BCM87XX_PMD_RX_SIGNAL_DETECT ;
 int BCM87XX_XGXS_LANE_STATUS ;
 int phy_read (struct phy_device*,int ) ;

__attribute__((used)) static int bcm87xx_read_status(struct phy_device *phydev)
{
 int rx_signal_detect;
 int pcs_status;
 int xgxs_lane_status;

 rx_signal_detect = phy_read(phydev, BCM87XX_PMD_RX_SIGNAL_DETECT);
 if (rx_signal_detect < 0)
  return rx_signal_detect;

 if ((rx_signal_detect & 1) == 0)
  goto no_link;

 pcs_status = phy_read(phydev, BCM87XX_10GBASER_PCS_STATUS);
 if (pcs_status < 0)
  return pcs_status;

 if ((pcs_status & 1) == 0)
  goto no_link;

 xgxs_lane_status = phy_read(phydev, BCM87XX_XGXS_LANE_STATUS);
 if (xgxs_lane_status < 0)
  return xgxs_lane_status;

 if ((xgxs_lane_status & 0x1000) == 0)
  goto no_link;

 phydev->speed = 10000;
 phydev->link = 1;
 phydev->duplex = 1;
 return 0;

no_link:
 phydev->link = 0;
 return 0;
}
