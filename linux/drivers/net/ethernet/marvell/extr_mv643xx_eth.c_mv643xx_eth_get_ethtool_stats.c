
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct net_device {int dummy; } ;
struct mv643xx_eth_stats {scalar_t__ netdev_off; int mp_off; int sizeof_stat; } ;
struct mv643xx_eth_private {scalar_t__ dev; } ;
struct ethtool_stats {int dummy; } ;


 int ARRAY_SIZE (struct mv643xx_eth_stats*) ;
 int mib_counters_update (struct mv643xx_eth_private*) ;
 int mv643xx_eth_get_stats (struct net_device*) ;
 struct mv643xx_eth_stats* mv643xx_eth_stats ;
 struct mv643xx_eth_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void mv643xx_eth_get_ethtool_stats(struct net_device *dev,
       struct ethtool_stats *stats,
       uint64_t *data)
{
 struct mv643xx_eth_private *mp = netdev_priv(dev);
 int i;

 mv643xx_eth_get_stats(dev);
 mib_counters_update(mp);

 for (i = 0; i < ARRAY_SIZE(mv643xx_eth_stats); i++) {
  const struct mv643xx_eth_stats *stat;
  void *p;

  stat = mv643xx_eth_stats + i;

  if (stat->netdev_off >= 0)
   p = ((void *)mp->dev) + stat->netdev_off;
  else
   p = ((void *)mp) + stat->mp_off;

  data[i] = (stat->sizeof_stat == 8) ?
    *(uint64_t *)p : *(uint32_t *)p;
 }
}
