
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int active_duplex; int active_speed; } ;
struct niu {TYPE_1__ link_config; int phy_addr; } ;


 int BCM8704_PCS_10G_R_STATUS ;
 int BCM8704_PCS_DEV_ADDR ;
 int BCM8704_PHYXS_DEV_ADDR ;
 int BCM8704_PHYXS_XGXS_LANE_STAT ;
 int BCM8704_PMA_PMD_DEV_ADDR ;
 int BCM8704_PMD_RCV_SIGDET ;
 int DUPLEX_FULL ;
 int DUPLEX_INVALID ;
 int PCS_10G_R_STATUS_BLK_LOCK ;
 int PHYXS_XGXS_LANE_STAT_ALINGED ;
 int PHYXS_XGXS_LANE_STAT_LANE0 ;
 int PHYXS_XGXS_LANE_STAT_LANE1 ;
 int PHYXS_XGXS_LANE_STAT_LANE2 ;
 int PHYXS_XGXS_LANE_STAT_LANE3 ;
 int PHYXS_XGXS_LANE_STAT_MAGIC ;
 int PHYXS_XGXS_LANE_STAT_PATTEST ;
 int PMD_RCV_SIGDET_GLOBAL ;
 int SPEED_10000 ;
 int SPEED_INVALID ;
 int mdio_read (struct niu*,int ,int ,int ) ;

__attribute__((used)) static int link_status_10g_bcm8706(struct niu *np, int *link_up_p)
{
 int err, link_up;
 link_up = 0;

 err = mdio_read(np, np->phy_addr, BCM8704_PMA_PMD_DEV_ADDR,
   BCM8704_PMD_RCV_SIGDET);
 if (err < 0 || err == 0xffff)
  goto out;
 if (!(err & PMD_RCV_SIGDET_GLOBAL)) {
  err = 0;
  goto out;
 }

 err = mdio_read(np, np->phy_addr, BCM8704_PCS_DEV_ADDR,
   BCM8704_PCS_10G_R_STATUS);
 if (err < 0)
  goto out;

 if (!(err & PCS_10G_R_STATUS_BLK_LOCK)) {
  err = 0;
  goto out;
 }

 err = mdio_read(np, np->phy_addr, BCM8704_PHYXS_DEV_ADDR,
   BCM8704_PHYXS_XGXS_LANE_STAT);
 if (err < 0)
  goto out;
 if (err != (PHYXS_XGXS_LANE_STAT_ALINGED |
      PHYXS_XGXS_LANE_STAT_MAGIC |
      PHYXS_XGXS_LANE_STAT_PATTEST |
      PHYXS_XGXS_LANE_STAT_LANE3 |
      PHYXS_XGXS_LANE_STAT_LANE2 |
      PHYXS_XGXS_LANE_STAT_LANE1 |
      PHYXS_XGXS_LANE_STAT_LANE0)) {
  err = 0;
  np->link_config.active_speed = SPEED_INVALID;
  np->link_config.active_duplex = DUPLEX_INVALID;
  goto out;
 }

 link_up = 1;
 np->link_config.active_speed = SPEED_10000;
 np->link_config.active_duplex = DUPLEX_FULL;
 err = 0;

out:
 *link_up_p = link_up;
 return err;
}
