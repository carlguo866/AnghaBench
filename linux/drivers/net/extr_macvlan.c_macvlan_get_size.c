
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct macvlan_dev {int dummy; } ;


 size_t macvlan_get_size_mac (struct macvlan_dev*) ;
 struct macvlan_dev* netdev_priv (struct net_device const*) ;
 size_t nla_total_size (int) ;

__attribute__((used)) static size_t macvlan_get_size(const struct net_device *dev)
{
 struct macvlan_dev *vlan = netdev_priv(dev);

 return (0
  + nla_total_size(4)
  + nla_total_size(2)
  + nla_total_size(4)
  + macvlan_get_size_mac(vlan)
  );
}
