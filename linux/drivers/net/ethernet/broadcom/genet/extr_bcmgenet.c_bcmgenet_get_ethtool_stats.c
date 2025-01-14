
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
typedef unsigned long u32 ;
struct net_device {int stats; } ;
struct ethtool_stats {int dummy; } ;
struct bcmgenet_stats {scalar_t__ type; int stat_sizeof; int stat_offset; } ;
struct bcmgenet_priv {int dummy; } ;


 int BCMGENET_STATS_LEN ;
 scalar_t__ BCMGENET_STAT_NETDEV ;
 struct bcmgenet_stats* bcmgenet_gstrings_stats ;
 int bcmgenet_update_mib_counters (struct bcmgenet_priv*) ;
 struct bcmgenet_priv* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static void bcmgenet_get_ethtool_stats(struct net_device *dev,
           struct ethtool_stats *stats,
           u64 *data)
{
 struct bcmgenet_priv *priv = netdev_priv(dev);
 int i;

 if (netif_running(dev))
  bcmgenet_update_mib_counters(priv);

 for (i = 0; i < BCMGENET_STATS_LEN; i++) {
  const struct bcmgenet_stats *s;
  char *p;

  s = &bcmgenet_gstrings_stats[i];
  if (s->type == BCMGENET_STAT_NETDEV)
   p = (char *)&dev->stats;
  else
   p = (char *)priv;
  p += s->stat_offset;
  if (sizeof(unsigned long) != sizeof(u32) &&
      s->stat_sizeof == sizeof(unsigned long))
   data[i] = *(unsigned long *)p;
  else
   data[i] = *(u32 *)p;
 }
}
