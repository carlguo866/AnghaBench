
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_private {int lock; } ;
struct net_device {int dummy; } ;
struct ethtool_link_ksettings {int dummy; } ;


 int netdev_get_ecmd (struct net_device*,struct ethtool_link_ksettings*) ;
 struct netdev_private* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int get_link_ksettings(struct net_device *dev,
         struct ethtool_link_ksettings *ecmd)
{
 struct netdev_private *np = netdev_priv(dev);
 spin_lock_irq(&np->lock);
 netdev_get_ecmd(dev, ecmd);
 spin_unlock_irq(&np->lock);
 return 0;
}
