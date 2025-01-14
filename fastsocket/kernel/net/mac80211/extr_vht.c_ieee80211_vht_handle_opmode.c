
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_6__ {int rx_nss; int bandwidth; } ;
struct sta_info {TYPE_3__ sta; int cur_max_bandwidth; } ;
struct ieee80211_supported_band {int dummy; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct TYPE_5__ {TYPE_1__* wiphy; } ;
struct ieee80211_local {TYPE_2__ hw; } ;
typedef enum ieee80211_sta_rx_bandwidth { ____Placeholder_ieee80211_sta_rx_bandwidth } ieee80211_sta_rx_bandwidth ;
typedef enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;
struct TYPE_4__ {struct ieee80211_supported_band** bands; } ;






 int IEEE80211_OPMODE_NOTIF_CHANWIDTH_MASK ;
 int IEEE80211_OPMODE_NOTIF_RX_NSS_MASK ;
 int IEEE80211_OPMODE_NOTIF_RX_NSS_SHIFT ;
 int IEEE80211_OPMODE_NOTIF_RX_NSS_TYPE_BF ;
 int IEEE80211_RC_NSS_CHANGED ;
 int IEEE80211_STA_RX_BW_160 ;
 int IEEE80211_STA_RX_BW_20 ;
 int IEEE80211_STA_RX_BW_40 ;
 int IEEE80211_STA_RX_BW_80 ;
 int ieee80211_sta_cur_vht_bw (struct sta_info*) ;
 int rate_control_rate_update (struct ieee80211_local*,struct ieee80211_supported_band*,struct sta_info*,int) ;

void ieee80211_vht_handle_opmode(struct ieee80211_sub_if_data *sdata,
     struct sta_info *sta, u8 opmode,
     enum ieee80211_band band, bool nss_only)
{
 struct ieee80211_local *local = sdata->local;
 struct ieee80211_supported_band *sband;
 enum ieee80211_sta_rx_bandwidth new_bw;
 u32 changed = 0;
 u8 nss;

 sband = local->hw.wiphy->bands[band];


 if (opmode & IEEE80211_OPMODE_NOTIF_RX_NSS_TYPE_BF)
  return;

 nss = opmode & IEEE80211_OPMODE_NOTIF_RX_NSS_MASK;
 nss >>= IEEE80211_OPMODE_NOTIF_RX_NSS_SHIFT;
 nss += 1;

 if (sta->sta.rx_nss != nss) {
  sta->sta.rx_nss = nss;
  changed |= IEEE80211_RC_NSS_CHANGED;
 }

 if (nss_only)
  goto change;

 switch (opmode & IEEE80211_OPMODE_NOTIF_CHANWIDTH_MASK) {
 case 130:
  sta->cur_max_bandwidth = IEEE80211_STA_RX_BW_20;
  break;
 case 129:
  sta->cur_max_bandwidth = IEEE80211_STA_RX_BW_40;
  break;
 case 128:
  sta->cur_max_bandwidth = IEEE80211_STA_RX_BW_80;
  break;
 case 131:
  sta->cur_max_bandwidth = IEEE80211_STA_RX_BW_160;
  break;
 }

 new_bw = ieee80211_sta_cur_vht_bw(sta);
 if (new_bw != sta->sta.bandwidth) {
  sta->sta.bandwidth = new_bw;
  changed |= IEEE80211_RC_NSS_CHANGED;
 }

 change:
 if (changed)
  rate_control_rate_update(local, sband, sta, changed);
}
