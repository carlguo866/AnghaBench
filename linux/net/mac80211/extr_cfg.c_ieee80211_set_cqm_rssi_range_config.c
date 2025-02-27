
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct ieee80211_bss_conf {scalar_t__ cqm_rssi_hyst; scalar_t__ cqm_rssi_thold; void* cqm_rssi_high; void* cqm_rssi_low; } ;
struct ieee80211_vif {int driver_flags; struct ieee80211_bss_conf bss_conf; } ;
struct TYPE_3__ {scalar_t__ associated; scalar_t__ last_cqm_event_signal; } ;
struct TYPE_4__ {TYPE_1__ mgd; } ;
struct ieee80211_sub_if_data {struct ieee80211_vif vif; TYPE_2__ u; } ;
typedef void* s32 ;


 int BSS_CHANGED_CQM ;
 int EOPNOTSUPP ;
 struct ieee80211_sub_if_data* IEEE80211_DEV_TO_SUB_IF (struct net_device*) ;
 int IEEE80211_VIF_BEACON_FILTER ;
 int IEEE80211_VIF_SUPPORTS_CQM_RSSI ;
 int ieee80211_bss_info_change_notify (struct ieee80211_sub_if_data*,int ) ;

__attribute__((used)) static int ieee80211_set_cqm_rssi_range_config(struct wiphy *wiphy,
            struct net_device *dev,
            s32 rssi_low, s32 rssi_high)
{
 struct ieee80211_sub_if_data *sdata = IEEE80211_DEV_TO_SUB_IF(dev);
 struct ieee80211_vif *vif = &sdata->vif;
 struct ieee80211_bss_conf *bss_conf = &vif->bss_conf;

 if (sdata->vif.driver_flags & IEEE80211_VIF_BEACON_FILTER)
  return -EOPNOTSUPP;

 bss_conf->cqm_rssi_low = rssi_low;
 bss_conf->cqm_rssi_high = rssi_high;
 bss_conf->cqm_rssi_thold = 0;
 bss_conf->cqm_rssi_hyst = 0;
 sdata->u.mgd.last_cqm_event_signal = 0;


 if (sdata->u.mgd.associated &&
     sdata->vif.driver_flags & IEEE80211_VIF_SUPPORTS_CQM_RSSI)
  ieee80211_bss_info_change_notify(sdata, BSS_CHANGED_CQM);

 return 0;
}
