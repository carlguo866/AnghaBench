
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ieee80211_supported_band {int n_bitrates; TYPE_1__* bitrates; } ;
struct TYPE_2__ {int bitrate; } ;


 int BIT (int) ;

__attribute__((used)) static int ieee80211_compatible_rates(const u8 *supp_rates, int supp_rates_len,
          struct ieee80211_supported_band *sband,
          u32 *rates)
{
 int i, j, count;
 *rates = 0;
 count = 0;
 for (i = 0; i < supp_rates_len; i++) {
  int rate = (supp_rates[i] & 0x7F) * 5;

  for (j = 0; j < sband->n_bitrates; j++)
   if (sband->bitrates[j].bitrate == rate) {
    *rates |= BIT(j);
    count++;
    break;
   }
 }

 return count;
}
