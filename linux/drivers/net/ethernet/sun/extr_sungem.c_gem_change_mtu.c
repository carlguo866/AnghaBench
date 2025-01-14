
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;
struct gem {scalar_t__ lstate; int cell_enabled; } ;


 scalar_t__ WARN_ON (int) ;
 int gem_netif_start (struct gem*) ;
 int gem_netif_stop (struct gem*) ;
 int gem_reinit_chip (struct gem*) ;
 int gem_set_link_modes (struct gem*) ;
 scalar_t__ link_up ;
 struct gem* netdev_priv (struct net_device*) ;
 int netif_device_present (struct net_device*) ;
 int netif_running (struct net_device*) ;

__attribute__((used)) static int gem_change_mtu(struct net_device *dev, int new_mtu)
{
 struct gem *gp = netdev_priv(dev);

 dev->mtu = new_mtu;


 if (!netif_running(dev) || !netif_device_present(dev))
  return 0;


 if (WARN_ON(!gp->cell_enabled))
  return 0;

 gem_netif_stop(gp);
 gem_reinit_chip(gp);
 if (gp->lstate == link_up)
  gem_set_link_modes(gp);
 gem_netif_start(gp);

 return 0;
}
