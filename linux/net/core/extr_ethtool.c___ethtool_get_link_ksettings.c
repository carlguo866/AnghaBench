
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {TYPE_1__* ethtool_ops; } ;
struct ethtool_link_ksettings {int dummy; } ;
struct TYPE_2__ {int (* get_link_ksettings ) (struct net_device*,struct ethtool_link_ksettings*) ;} ;


 int ASSERT_RTNL () ;
 int EOPNOTSUPP ;
 int memset (struct ethtool_link_ksettings*,int ,int) ;
 int stub1 (struct net_device*,struct ethtool_link_ksettings*) ;

int __ethtool_get_link_ksettings(struct net_device *dev,
     struct ethtool_link_ksettings *link_ksettings)
{
 ASSERT_RTNL();

 if (!dev->ethtool_ops->get_link_ksettings)
  return -EOPNOTSUPP;

 memset(link_ksettings, 0, sizeof(*link_ksettings));
 return dev->ethtool_ops->get_link_ksettings(dev, link_ksettings);
}
