
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ fc; scalar_t__ fc_autoneg; } ;
struct pch_gbe_hw {TYPE_1__ mac; } ;
struct pch_gbe_adapter {struct pch_gbe_hw hw; } ;
struct net_device {int dummy; } ;
struct ethtool_pauseparam {int rx_pause; int tx_pause; int autoneg; } ;


 int AUTONEG_DISABLE ;
 int AUTONEG_ENABLE ;
 scalar_t__ PCH_GBE_FC_FULL ;
 scalar_t__ PCH_GBE_FC_RX_PAUSE ;
 scalar_t__ PCH_GBE_FC_TX_PAUSE ;
 struct pch_gbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void pch_gbe_get_pauseparam(struct net_device *netdev,
           struct ethtool_pauseparam *pause)
{
 struct pch_gbe_adapter *adapter = netdev_priv(netdev);
 struct pch_gbe_hw *hw = &adapter->hw;

 pause->autoneg =
     ((hw->mac.fc_autoneg) ? AUTONEG_ENABLE : AUTONEG_DISABLE);

 if (hw->mac.fc == PCH_GBE_FC_RX_PAUSE) {
  pause->rx_pause = 1;
 } else if (hw->mac.fc == PCH_GBE_FC_TX_PAUSE) {
  pause->tx_pause = 1;
 } else if (hw->mac.fc == PCH_GBE_FC_FULL) {
  pause->rx_pause = 1;
  pause->tx_pause = 1;
 }
}
