
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct link_vars {int dummy; } ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {scalar_t__ req_line_speed; int speed_cap_mask; scalar_t__ req_duplex; int supported; scalar_t__ type; } ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*) ;
 scalar_t__ DUPLEX_FULL ;
 int MDIO_AN_DEVAD ;
 int MDIO_AN_REG_8481_1000T_CTRL ;
 int MDIO_AN_REG_8481_10GBASE_T_AN_CTRL ;
 int MDIO_AN_REG_8481_AUX_CTRL ;
 int MDIO_AN_REG_8481_LEGACY_AN_ADV ;
 int MDIO_AN_REG_8481_LEGACY_MII_CTRL ;
 int MDIO_AN_REG_CTRL ;
 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_REG_CTRL ;
 int NETIF_MSG_LINK ;
 int PHY_INIT ;
 int PORT_HW_CFG_SPEED_CAPABILITY_D0_100M_FULL ;
 int PORT_HW_CFG_SPEED_CAPABILITY_D0_100M_HALF ;
 int PORT_HW_CFG_SPEED_CAPABILITY_D0_10G ;
 int PORT_HW_CFG_SPEED_CAPABILITY_D0_10M_FULL ;
 int PORT_HW_CFG_SPEED_CAPABILITY_D0_10M_HALF ;
 int PORT_HW_CFG_SPEED_CAPABILITY_D0_1G ;
 scalar_t__ PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84833 ;
 scalar_t__ PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84834 ;
 scalar_t__ SPEED_10 ;
 scalar_t__ SPEED_100 ;
 scalar_t__ SPEED_1000 ;
 scalar_t__ SPEED_10000 ;
 scalar_t__ SPEED_AUTO_NEG ;
 int SUPPORTED_100baseT_Full ;
 int SUPPORTED_100baseT_Half ;
 int SUPPORTED_10baseT_Full ;
 int SUPPORTED_10baseT_Half ;
 int bnx2x_848xx_specific_func (struct bnx2x_phy*,struct link_params*,int ) ;
 int bnx2x_cl45_read (struct bnx2x*,struct bnx2x_phy*,int ,int ,int*) ;
 int bnx2x_cl45_read_or_write (struct bnx2x*,struct bnx2x_phy*,int ,int ,int) ;
 int bnx2x_cl45_write (struct bnx2x*,struct bnx2x_phy*,int ,int ,int) ;
 int bnx2x_ext_phy_set_pause (struct link_params*,struct bnx2x_phy*,struct link_vars*) ;

__attribute__((used)) static int bnx2x_848xx_cmn_config_init(struct bnx2x_phy *phy,
           struct link_params *params,
           struct link_vars *vars)
{
 struct bnx2x *bp = params->bp;
 u16 autoneg_val, an_1000_val, an_10_100_val;

 bnx2x_848xx_specific_func(phy, params, PHY_INIT);
 bnx2x_cl45_write(bp, phy,
    MDIO_PMA_DEVAD, MDIO_PMA_REG_CTRL, 0x0000);


 bnx2x_cl45_read(bp, phy,
   MDIO_AN_DEVAD, MDIO_AN_REG_8481_1000T_CTRL,
   &an_1000_val);

 bnx2x_ext_phy_set_pause(params, phy, vars);
 bnx2x_cl45_read(bp, phy,
   MDIO_AN_DEVAD,
   MDIO_AN_REG_8481_LEGACY_AN_ADV,
   &an_10_100_val);
 bnx2x_cl45_read(bp, phy,
   MDIO_AN_DEVAD, MDIO_AN_REG_8481_LEGACY_MII_CTRL,
   &autoneg_val);

 autoneg_val &= ~((1<<6) | (1<<8) | (1<<9) | (1<<12) | (1<<13));
 an_10_100_val &= ~((1<<5) | (1<<6) | (1<<7) | (1<<8));

 if (((phy->req_line_speed == SPEED_AUTO_NEG) &&
      (phy->speed_cap_mask &
      PORT_HW_CFG_SPEED_CAPABILITY_D0_1G)) ||
     (phy->req_line_speed == SPEED_1000)) {
  an_1000_val |= (1<<8);
  autoneg_val |= (1<<9 | 1<<12);
  if (phy->req_duplex == DUPLEX_FULL)
   an_1000_val |= (1<<9);
  DP(NETIF_MSG_LINK, "Advertising 1G\n");
 } else
  an_1000_val &= ~((1<<8) | (1<<9));

 bnx2x_cl45_write(bp, phy,
    MDIO_AN_DEVAD, MDIO_AN_REG_8481_1000T_CTRL,
    an_1000_val);


 if ((phy->req_line_speed == SPEED_AUTO_NEG) &&
      (phy->speed_cap_mask &
       (PORT_HW_CFG_SPEED_CAPABILITY_D0_100M_FULL |
        PORT_HW_CFG_SPEED_CAPABILITY_D0_100M_HALF))) {
  an_10_100_val |= (1<<7);

  autoneg_val |= (1<<9 | 1<<12);

  if (phy->req_duplex == DUPLEX_FULL)
   an_10_100_val |= (1<<8);
  DP(NETIF_MSG_LINK, "Advertising 100M\n");
 }

 if (((phy->req_line_speed == SPEED_AUTO_NEG) &&
      (phy->speed_cap_mask &
       (PORT_HW_CFG_SPEED_CAPABILITY_D0_10M_FULL |
        PORT_HW_CFG_SPEED_CAPABILITY_D0_10M_HALF)) &&
      (phy->supported &
       (SUPPORTED_10baseT_Half |
        SUPPORTED_10baseT_Full)))) {
  an_10_100_val |= (1<<5);
  autoneg_val |= (1<<9 | 1<<12);
  if (phy->req_duplex == DUPLEX_FULL)
   an_10_100_val |= (1<<6);
  DP(NETIF_MSG_LINK, "Advertising 10M\n");
 }


 if ((phy->req_line_speed == SPEED_100) &&
     (phy->supported &
      (SUPPORTED_100baseT_Half |
       SUPPORTED_100baseT_Full))) {
  autoneg_val |= (1<<13);

  bnx2x_cl45_write(bp, phy,
     MDIO_AN_DEVAD, MDIO_AN_REG_8481_AUX_CTRL,
     (1<<15 | 1<<9 | 7<<0));

  an_10_100_val |= (1<<8) | (1<<7);
  DP(NETIF_MSG_LINK, "Setting 100M force\n");
 }
 if ((phy->req_line_speed == SPEED_10) &&
     (phy->supported &
      (SUPPORTED_10baseT_Half |
       SUPPORTED_10baseT_Full))) {

  bnx2x_cl45_write(bp, phy,
     MDIO_AN_DEVAD, MDIO_AN_REG_8481_AUX_CTRL,
     (1<<15 | 1<<9 | 7<<0));
  DP(NETIF_MSG_LINK, "Setting 10M force\n");
 }

 bnx2x_cl45_write(bp, phy,
    MDIO_AN_DEVAD, MDIO_AN_REG_8481_LEGACY_AN_ADV,
    an_10_100_val);

 if (phy->req_duplex == DUPLEX_FULL)
  autoneg_val |= (1<<8);




 if (((phy->type != PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84833) &&
      (phy->type != PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84834)) ||
     ((autoneg_val & (1<<12)) == 0))
  bnx2x_cl45_write(bp, phy,
    MDIO_AN_DEVAD,
    MDIO_AN_REG_8481_LEGACY_MII_CTRL, autoneg_val);

 if (((phy->req_line_speed == SPEED_AUTO_NEG) &&
     (phy->speed_cap_mask &
      PORT_HW_CFG_SPEED_CAPABILITY_D0_10G)) ||
  (phy->req_line_speed == SPEED_10000)) {
   DP(NETIF_MSG_LINK, "Advertising 10G\n");


   bnx2x_cl45_read_or_write(
    bp, phy,
    MDIO_AN_DEVAD,
    MDIO_AN_REG_8481_10GBASE_T_AN_CTRL,
    0x1000);
   bnx2x_cl45_write(bp, phy,
      MDIO_AN_DEVAD, MDIO_AN_REG_CTRL,
      0x3200);
 } else
  bnx2x_cl45_write(bp, phy,
     MDIO_AN_DEVAD,
     MDIO_AN_REG_8481_10GBASE_T_AN_CTRL,
     1);

 return 0;
}
