
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_cmd {int supported; int duplex; int autoneg; int transceiver; scalar_t__ phy_address; int port; int advertising; } ;
struct atl1c_hw {int link_cap_flags; int autoneg_advertised; } ;
struct atl1c_adapter {scalar_t__ link_speed; scalar_t__ link_duplex; struct atl1c_hw hw; } ;


 int ADVERTISED_TP ;
 int ATL1C_LINK_CAP_1000M ;
 int AUTONEG_ENABLE ;
 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 scalar_t__ FULL_DUPLEX ;
 int PORT_TP ;
 scalar_t__ SPEED_0 ;
 int SUPPORTED_1000baseT_Full ;
 int SUPPORTED_100baseT_Full ;
 int SUPPORTED_100baseT_Half ;
 int SUPPORTED_10baseT_Full ;
 int SUPPORTED_10baseT_Half ;
 int SUPPORTED_Autoneg ;
 int SUPPORTED_TP ;
 int XCVR_INTERNAL ;
 int ethtool_cmd_speed_set (struct ethtool_cmd*,int) ;
 struct atl1c_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int atl1c_get_settings(struct net_device *netdev,
         struct ethtool_cmd *ecmd)
{
 struct atl1c_adapter *adapter = netdev_priv(netdev);
 struct atl1c_hw *hw = &adapter->hw;

 ecmd->supported = (SUPPORTED_10baseT_Half |
      SUPPORTED_10baseT_Full |
      SUPPORTED_100baseT_Half |
      SUPPORTED_100baseT_Full |
      SUPPORTED_Autoneg |
      SUPPORTED_TP);
 if (hw->link_cap_flags & ATL1C_LINK_CAP_1000M)
  ecmd->supported |= SUPPORTED_1000baseT_Full;

 ecmd->advertising = ADVERTISED_TP;

 ecmd->advertising |= hw->autoneg_advertised;

 ecmd->port = PORT_TP;
 ecmd->phy_address = 0;
 ecmd->transceiver = XCVR_INTERNAL;

 if (adapter->link_speed != SPEED_0) {
  ethtool_cmd_speed_set(ecmd, adapter->link_speed);
  if (adapter->link_duplex == FULL_DUPLEX)
   ecmd->duplex = DUPLEX_FULL;
  else
   ecmd->duplex = DUPLEX_HALF;
 } else {
  ethtool_cmd_speed_set(ecmd, -1);
  ecmd->duplex = -1;
 }

 ecmd->autoneg = AUTONEG_ENABLE;
 return 0;
}
