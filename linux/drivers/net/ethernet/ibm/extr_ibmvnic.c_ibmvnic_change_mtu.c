
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ mtu; } ;
struct ibmvnic_adapter {TYPE_1__ desired; } ;


 scalar_t__ ETH_HLEN ;
 struct ibmvnic_adapter* netdev_priv (struct net_device*) ;
 int wait_for_reset (struct ibmvnic_adapter*) ;

__attribute__((used)) static int ibmvnic_change_mtu(struct net_device *netdev, int new_mtu)
{
 struct ibmvnic_adapter *adapter = netdev_priv(netdev);

 adapter->desired.mtu = new_mtu + ETH_HLEN;

 return wait_for_reset(adapter);
}
