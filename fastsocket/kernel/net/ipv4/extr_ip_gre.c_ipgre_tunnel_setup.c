
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * netdev_ops; } ;


 int ip_tunnel_setup (struct net_device*,int ) ;
 int ipgre_net_id ;
 int ipgre_netdev_ops ;

__attribute__((used)) static void ipgre_tunnel_setup(struct net_device *dev)
{
 dev->netdev_ops = &ipgre_netdev_ops;
 ip_tunnel_setup(dev, ipgre_net_id);
}
