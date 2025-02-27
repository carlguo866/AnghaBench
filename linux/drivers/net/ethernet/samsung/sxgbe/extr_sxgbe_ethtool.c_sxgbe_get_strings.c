
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int stat_string; } ;


 int ETH_GSTRING_LEN ;

 int SXGBE_STATS_LEN ;
 int WARN_ON (int) ;
 int memcpy (int *,int ,int ) ;
 TYPE_1__* sxgbe_gstrings_stats ;

__attribute__((used)) static void sxgbe_get_strings(struct net_device *dev, u32 stringset, u8 *data)
{
 int i;
 u8 *p = data;

 switch (stringset) {
 case 128:
  for (i = 0; i < SXGBE_STATS_LEN; i++) {
   memcpy(p, sxgbe_gstrings_stats[i].stat_string,
          ETH_GSTRING_LEN);
   p += ETH_GSTRING_LEN;
  }
  break;
 default:
  WARN_ON(1);
  break;
 }
}
