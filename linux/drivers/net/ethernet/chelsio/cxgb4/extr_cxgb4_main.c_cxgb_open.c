
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_info {struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct adapter {int flags; } ;


 int CXGB4_FULL_INIT_DONE ;
 int cxgb_up (struct adapter*) ;
 int link_start (struct net_device*) ;
 struct port_info* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_tx_start_all_queues (struct net_device*) ;
 int t4_update_port_info (struct port_info*) ;

__attribute__((used)) static int cxgb_open(struct net_device *dev)
{
 int err;
 struct port_info *pi = netdev_priv(dev);
 struct adapter *adapter = pi->adapter;

 netif_carrier_off(dev);

 if (!(adapter->flags & CXGB4_FULL_INIT_DONE)) {
  err = cxgb_up(adapter);
  if (err < 0)
   return err;
 }




 err = t4_update_port_info(pi);
 if (err < 0)
  return err;

 err = link_start(dev);
 if (!err)
  netif_tx_start_all_queues(dev);
 return err;
}
