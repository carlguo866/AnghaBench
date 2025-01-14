
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct gem {int wake_on_lan; scalar_t__ has_wol; } ;
struct ethtool_wolinfo {int wolopts; scalar_t__ supported; } ;


 scalar_t__ WOL_SUPPORTED_MASK ;
 struct gem* netdev_priv (struct net_device*) ;

__attribute__((used)) static void gem_get_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
{
 struct gem *gp = netdev_priv(dev);


 if (gp->has_wol) {
  wol->supported = WOL_SUPPORTED_MASK;
  wol->wolopts = gp->wake_on_lan;
 } else {
  wol->supported = 0;
  wol->wolopts = 0;
 }
}
