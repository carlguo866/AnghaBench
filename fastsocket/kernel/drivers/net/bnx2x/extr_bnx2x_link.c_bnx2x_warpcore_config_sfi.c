
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct link_params {scalar_t__* req_line_speed; struct bnx2x* bp; } ;
struct bnx2x_phy {scalar_t__ media_type; } ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*) ;
 scalar_t__ ETH_PHY_SFP_1G_FIBER ;
 int INT_PHY ;
 size_t LINK_CONFIG_IDX (int ) ;
 int NETIF_MSG_LINK ;
 scalar_t__ SPEED_10000 ;
 int bnx2x_get_warpcore_lane (struct bnx2x_phy*,struct link_params*) ;
 int bnx2x_warpcore_clear_regs (struct bnx2x_phy*,struct link_params*,int ) ;
 int bnx2x_warpcore_set_10G_XFI (struct bnx2x_phy*,struct link_params*,int ) ;
 int bnx2x_warpcore_set_sgmii_speed (struct bnx2x_phy*,struct link_params*,int,int ) ;

__attribute__((used)) static void bnx2x_warpcore_config_sfi(struct bnx2x_phy *phy,
          struct link_params *params)
{
 u16 lane = bnx2x_get_warpcore_lane(phy, params);
 struct bnx2x *bp = params->bp;
 bnx2x_warpcore_clear_regs(phy, params, lane);
 if ((params->req_line_speed[LINK_CONFIG_IDX(INT_PHY)] ==
      SPEED_10000) &&
     (phy->media_type != ETH_PHY_SFP_1G_FIBER)) {
  DP(NETIF_MSG_LINK, "Setting 10G SFI\n");
  bnx2x_warpcore_set_10G_XFI(phy, params, 0);
 } else {
  DP(NETIF_MSG_LINK, "Setting 1G Fiber\n");
  bnx2x_warpcore_set_sgmii_speed(phy, params, 1, 0);
 }
}
