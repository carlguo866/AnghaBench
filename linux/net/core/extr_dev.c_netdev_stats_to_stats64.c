
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct rtnl_link_stats64 {int dummy; } ;
struct net_device_stats {int dummy; } ;


 int BUILD_BUG_ON (int) ;
 int memcpy (struct rtnl_link_stats64*,struct net_device_stats const*,int) ;
 int memset (char*,int ,int) ;

void netdev_stats_to_stats64(struct rtnl_link_stats64 *stats64,
        const struct net_device_stats *netdev_stats)
{







 size_t i, n = sizeof(*netdev_stats) / sizeof(unsigned long);
 const unsigned long *src = (const unsigned long *)netdev_stats;
 u64 *dst = (u64 *)stats64;

 BUILD_BUG_ON(n > sizeof(*stats64) / sizeof(u64));
 for (i = 0; i < n; i++)
  dst[i] = src[i];

 memset((char *)stats64 + n * sizeof(u64), 0,
        sizeof(*stats64) - n * sizeof(u64));

}
