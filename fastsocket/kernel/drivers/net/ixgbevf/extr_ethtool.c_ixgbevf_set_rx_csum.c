
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct ixgbevf_adapter {int flags; } ;


 int IXGBE_FLAG_RX_CSUM_ENABLED ;
 int ixgbevf_reinit_locked (struct ixgbevf_adapter*) ;
 int ixgbevf_reset (struct ixgbevf_adapter*) ;
 struct ixgbevf_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int ixgbevf_set_rx_csum(struct net_device *netdev, u32 data)
{
 struct ixgbevf_adapter *adapter = netdev_priv(netdev);
 if (data)
  adapter->flags |= IXGBE_FLAG_RX_CSUM_ENABLED;
 else
  adapter->flags &= ~IXGBE_FLAG_RX_CSUM_ENABLED;

 if (netif_running(netdev)) {
  ixgbevf_reinit_locked(adapter);
 } else {
  ixgbevf_reset(adapter);
 }

 return 0;
}
