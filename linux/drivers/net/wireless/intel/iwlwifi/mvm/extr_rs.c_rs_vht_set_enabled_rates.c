
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_lq_sta {int active_mimo2_rate; int active_siso_rate; } ;
struct ieee80211_sta_vht_cap {int dummy; } ;
struct ieee80211_sta {scalar_t__ bandwidth; int rx_nss; } ;


 int BIT (int) ;
 scalar_t__ IEEE80211_STA_RX_BW_20 ;
 int IWL_RATE_9M_INDEX ;
 int IWL_RATE_MCS_0_INDEX ;
 int IWL_RATE_MCS_9_INDEX ;
 int rs_vht_highest_rx_mcs_index (struct ieee80211_sta_vht_cap*,int) ;

__attribute__((used)) static void rs_vht_set_enabled_rates(struct ieee80211_sta *sta,
         struct ieee80211_sta_vht_cap *vht_cap,
         struct iwl_lq_sta *lq_sta)
{
 int i;
 int highest_mcs = rs_vht_highest_rx_mcs_index(vht_cap, 1);

 if (highest_mcs >= IWL_RATE_MCS_0_INDEX) {
  for (i = IWL_RATE_MCS_0_INDEX; i <= highest_mcs; i++) {
   if (i == IWL_RATE_9M_INDEX)
    continue;


   if (i == IWL_RATE_MCS_9_INDEX &&
       sta->bandwidth == IEEE80211_STA_RX_BW_20)
    continue;

   lq_sta->active_siso_rate |= BIT(i);
  }
 }

 if (sta->rx_nss < 2)
  return;

 highest_mcs = rs_vht_highest_rx_mcs_index(vht_cap, 2);
 if (highest_mcs >= IWL_RATE_MCS_0_INDEX) {
  for (i = IWL_RATE_MCS_0_INDEX; i <= highest_mcs; i++) {
   if (i == IWL_RATE_9M_INDEX)
    continue;


   if (i == IWL_RATE_MCS_9_INDEX &&
       sta->bandwidth == IEEE80211_STA_RX_BW_20)
    continue;

   lq_sta->active_mimo2_rate |= BIT(i);
  }
 }
}
