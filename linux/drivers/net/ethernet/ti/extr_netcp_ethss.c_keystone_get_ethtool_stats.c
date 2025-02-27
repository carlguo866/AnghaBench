
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct netcp_intf {int dummy; } ;
struct net_device {int dummy; } ;
struct gbe_priv {int hw_stats_lock; } ;
struct gbe_intf {struct gbe_priv* gbe_dev; } ;
struct ethtool_stats {int dummy; } ;


 scalar_t__ IS_SS_ID_VER_14 (struct gbe_priv*) ;
 int gbe_update_stats (struct gbe_priv*,int *) ;
 int gbe_update_stats_ver14 (struct gbe_priv*,int *) ;
 struct gbe_intf* keystone_get_intf_data (struct netcp_intf*) ;
 struct netcp_intf* netdev_priv (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void keystone_get_ethtool_stats(struct net_device *ndev,
           struct ethtool_stats *stats,
           uint64_t *data)
{
 struct netcp_intf *netcp = netdev_priv(ndev);
 struct gbe_intf *gbe_intf;
 struct gbe_priv *gbe_dev;

 gbe_intf = keystone_get_intf_data(netcp);
 if (!gbe_intf)
  return;

 gbe_dev = gbe_intf->gbe_dev;
 spin_lock_bh(&gbe_dev->hw_stats_lock);
 if (IS_SS_ID_VER_14(gbe_dev))
  gbe_update_stats_ver14(gbe_dev, data);
 else
  gbe_update_stats(gbe_dev, data);
 spin_unlock_bh(&gbe_dev->hw_stats_lock);
}
