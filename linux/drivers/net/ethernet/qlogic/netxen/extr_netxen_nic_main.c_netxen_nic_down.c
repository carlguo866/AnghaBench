
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netxen_adapter {int dummy; } ;
struct net_device {int dummy; } ;


 int __netxen_nic_down (struct netxen_adapter*,struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static inline void
netxen_nic_down(struct netxen_adapter *adapter, struct net_device *netdev)
{
 rtnl_lock();
 if (netif_running(netdev))
  __netxen_nic_down(adapter, netdev);
 rtnl_unlock();

}
