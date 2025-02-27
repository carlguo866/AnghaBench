
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;


 int netdev_adjacent_dev_disable (struct net_device*,struct net_device*) ;
 int netdev_adjacent_dev_enable (struct net_device*,struct net_device*) ;
 int netdev_upper_dev_link (struct net_device*,struct net_device*,struct netlink_ext_ack*) ;

int netdev_adjacent_change_prepare(struct net_device *old_dev,
       struct net_device *new_dev,
       struct net_device *dev,
       struct netlink_ext_ack *extack)
{
 int err;

 if (!new_dev)
  return 0;

 if (old_dev && new_dev != old_dev)
  netdev_adjacent_dev_disable(dev, old_dev);

 err = netdev_upper_dev_link(new_dev, dev, extack);
 if (err) {
  if (old_dev && new_dev != old_dev)
   netdev_adjacent_dev_enable(dev, old_dev);
  return err;
 }

 return 0;
}
