
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct igb_adapter {int flags; } ;


 int IGB_FLAG_RX_LEGACY ;
 int IGB_PRIV_FLAGS_LEGACY_RX ;
 struct igb_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 igb_get_priv_flags(struct net_device *netdev)
{
 struct igb_adapter *adapter = netdev_priv(netdev);
 u32 priv_flags = 0;

 if (adapter->flags & IGB_FLAG_RX_LEGACY)
  priv_flags |= IGB_PRIV_FLAGS_LEGACY_RX;

 return priv_flags;
}
