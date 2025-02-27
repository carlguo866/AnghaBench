
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct netxen_adapter {void* rx_csum; } ;
struct net_device {int features; } ;


 int EIO ;
 int NETIF_F_LRO ;
 int NETXEN_NIC_LRO_DISABLED ;
 int netdev_info (struct net_device*,char*) ;
 struct netxen_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netxen_config_hw_lro (struct netxen_adapter*,int ) ;
 int netxen_send_lro_cleanup (struct netxen_adapter*) ;

__attribute__((used)) static int netxen_nic_set_rx_csum(struct net_device *dev, u32 data)
{
 struct netxen_adapter *adapter = netdev_priv(dev);

 if (data) {
  adapter->rx_csum = data;
  return 0;
 }

 if (dev->features & NETIF_F_LRO) {
  if (netxen_config_hw_lro(adapter, NETXEN_NIC_LRO_DISABLED))
   return -EIO;

  dev->features &= ~NETIF_F_LRO;
  netxen_send_lro_cleanup(adapter);
  netdev_info(dev, "disabling LRO as rx_csum is off\n");
 }
 adapter->rx_csum = data;
 return 0;
}
