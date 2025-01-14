
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_4__ {int parent; } ;
struct net_device {TYPE_2__ dev; TYPE_1__* netdev_ops; } ;
struct TYPE_3__ {int ndo_get_vf_port; } ;


 scalar_t__ dev_num_vf (int ) ;
 int rtnl_port_self_fill (struct sk_buff*,struct net_device*) ;
 int rtnl_vf_ports_fill (struct sk_buff*,struct net_device*) ;

__attribute__((used)) static int rtnl_port_fill(struct sk_buff *skb, struct net_device *dev)
{
 int err;

 if (!dev->netdev_ops->ndo_get_vf_port || !dev->dev.parent)
  return 0;

 err = rtnl_port_self_fill(skb, dev);
 if (err)
  return err;

 if (dev_num_vf(dev->dev.parent)) {
  err = rtnl_vf_ports_fill(skb, dev);
  if (err)
   return err;
 }

 return 0;
}
