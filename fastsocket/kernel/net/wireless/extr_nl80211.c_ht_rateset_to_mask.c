
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_3__ {int* rx_mask; } ;
struct TYPE_4__ {TYPE_1__ mcs; } ;
struct ieee80211_supported_band {TYPE_2__ ht_cap; } ;


 int BIT (size_t) ;
 int IEEE80211_HT_MCS_MASK_LEN ;
 int memset (size_t*,int ,int) ;

__attribute__((used)) static bool ht_rateset_to_mask(struct ieee80211_supported_band *sband,
          u8 *rates, u8 rates_len,
          u8 mcs[IEEE80211_HT_MCS_MASK_LEN])
{
 u8 i;

 memset(mcs, 0, IEEE80211_HT_MCS_MASK_LEN);

 for (i = 0; i < rates_len; i++) {
  int ridx, rbit;

  ridx = rates[i] / 8;
  rbit = BIT(rates[i] % 8);


  if ((ridx < 0) || (ridx >= IEEE80211_HT_MCS_MASK_LEN))
   return 0;


  if (sband->ht_cap.mcs.rx_mask[ridx] & rbit)
   mcs[ridx] |= rbit;
  else
   return 0;
 }

 return 1;
}
