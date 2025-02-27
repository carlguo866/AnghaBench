
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct wl12xx_vif {int flags; int band; void* rate_set; void* basic_rate_set; int basic_rate; int beacon_int; } ;
struct wl1271 {TYPE_1__* ops; struct wl12xx_vif* sched_vif; } ;
struct ieee80211_bss_conf {scalar_t__ basic_rates; int beacon_int; int aid; int bssid; } ;
struct TYPE_2__ {int (* sched_scan_stop ) (struct wl1271*,struct wl12xx_vif*) ;} ;


 int DEBUG_MAC80211 ;
 int WLVIF_FLAG_IN_USE ;
 int set_bit (int ,int *) ;
 int stub1 (struct wl1271*,struct wl12xx_vif*) ;
 int wl1271_acx_sta_rate_policies (struct wl1271*,struct wl12xx_vif*) ;
 int wl1271_build_qos_null_data (struct wl1271*,int ) ;
 int wl1271_debug (int ,char*,int ,int ,int ,scalar_t__,scalar_t__) ;
 void* wl1271_tx_enabled_rates_get (struct wl1271*,scalar_t__,int ) ;
 int wl1271_tx_min_rate_get (struct wl1271*,void*) ;
 int wl12xx_cmd_build_null_data (struct wl1271*,struct wl12xx_vif*) ;
 int wl12xx_wlvif_to_vif (struct wl12xx_vif*) ;
 int wlcore_set_ssid (struct wl1271*,struct wl12xx_vif*) ;

__attribute__((used)) static int wlcore_set_bssid(struct wl1271 *wl, struct wl12xx_vif *wlvif,
       struct ieee80211_bss_conf *bss_conf,
       u32 sta_rate_set)
{
 u32 rates;
 int ret;

 wl1271_debug(DEBUG_MAC80211,
      "changed_bssid: %pM, aid: %d, bcn_int: %d, brates: 0x%x sta_rate_set: 0x%x",
      bss_conf->bssid, bss_conf->aid,
      bss_conf->beacon_int,
      bss_conf->basic_rates, sta_rate_set);

 wlvif->beacon_int = bss_conf->beacon_int;
 rates = bss_conf->basic_rates;
 wlvif->basic_rate_set =
  wl1271_tx_enabled_rates_get(wl, rates,
         wlvif->band);
 wlvif->basic_rate =
  wl1271_tx_min_rate_get(wl,
           wlvif->basic_rate_set);

 if (sta_rate_set)
  wlvif->rate_set =
   wl1271_tx_enabled_rates_get(wl,
      sta_rate_set,
      wlvif->band);


 if (wl->sched_vif == wlvif)
  wl->ops->sched_scan_stop(wl, wlvif);

 ret = wl1271_acx_sta_rate_policies(wl, wlvif);
 if (ret < 0)
  return ret;

 ret = wl12xx_cmd_build_null_data(wl, wlvif);
 if (ret < 0)
  return ret;

 ret = wl1271_build_qos_null_data(wl, wl12xx_wlvif_to_vif(wlvif));
 if (ret < 0)
  return ret;

 wlcore_set_ssid(wl, wlvif);

 set_bit(WLVIF_FLAG_IN_USE, &wlvif->flags);

 return 0;
}
