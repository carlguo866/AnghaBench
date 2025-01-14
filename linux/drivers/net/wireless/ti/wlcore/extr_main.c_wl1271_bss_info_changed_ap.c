
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct wl12xx_vif {int flags; int role_id; int basic_rate; int basic_rate_set; int band; } ;
struct wl1271 {int * roc_map; } ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_2__ {scalar_t__ width; } ;
struct ieee80211_bss_conf {int basic_rates; int ht_operation_mode; TYPE_1__ chandef; scalar_t__ enable_beacon; } ;


 int BSS_CHANGED_BASIC_RATES ;
 int BSS_CHANGED_BEACON_ENABLED ;
 int BSS_CHANGED_HT ;
 int DEBUG_AP ;
 scalar_t__ NL80211_CHAN_WIDTH_20_NOHT ;
 int WLVIF_FLAG_AP_PROBE_RESP_SET ;
 int WLVIF_FLAG_AP_STARTED ;
 int clear_bit (int ,int *) ;
 int ieee80211_vif_is_mesh (struct ieee80211_vif*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wl1271_acx_set_ht_information (struct wl1271*,struct wl12xx_vif*,int ) ;
 int wl1271_ap_init_hwenc (struct wl1271*,struct wl12xx_vif*) ;
 int wl1271_ap_init_templates (struct wl1271*,struct ieee80211_vif*) ;
 int wl1271_ap_set_probe_resp_tmpl (struct wl1271*,int ,struct ieee80211_vif*) ;
 int wl1271_bss_beacon_info_changed (struct wl1271*,struct ieee80211_vif*,struct ieee80211_bss_conf*,int) ;
 int wl1271_bss_erp_info_changed (struct wl1271*,struct ieee80211_vif*,struct ieee80211_bss_conf*,int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_error (char*,int) ;
 int wl1271_init_ap_rates (struct wl1271*,struct wl12xx_vif*) ;
 int wl1271_tx_enabled_rates_get (struct wl1271*,int,int ) ;
 int wl1271_tx_min_rate_get (struct wl1271*,int ) ;
 int wl1271_warning (char*,int) ;
 int wl12xx_cmd_role_start_ap (struct wl1271*,struct wl12xx_vif*) ;
 int wl12xx_cmd_role_stop_ap (struct wl1271*,struct wl12xx_vif*) ;
 int wl12xx_croc (struct wl1271*,int ) ;
 struct wl12xx_vif* wl12xx_vif_to_data (struct ieee80211_vif*) ;
 int wlcore_set_beacon_template (struct wl1271*,struct ieee80211_vif*,int) ;

__attribute__((used)) static void wl1271_bss_info_changed_ap(struct wl1271 *wl,
           struct ieee80211_vif *vif,
           struct ieee80211_bss_conf *bss_conf,
           u32 changed)
{
 struct wl12xx_vif *wlvif = wl12xx_vif_to_data(vif);
 int ret = 0;

 if (changed & BSS_CHANGED_BASIC_RATES) {
  u32 rates = bss_conf->basic_rates;

  wlvif->basic_rate_set = wl1271_tx_enabled_rates_get(wl, rates,
         wlvif->band);
  wlvif->basic_rate = wl1271_tx_min_rate_get(wl,
       wlvif->basic_rate_set);

  ret = wl1271_init_ap_rates(wl, wlvif);
  if (ret < 0) {
   wl1271_error("AP rate policy change failed %d", ret);
   goto out;
  }

  ret = wl1271_ap_init_templates(wl, vif);
  if (ret < 0)
   goto out;


  if (!ieee80211_vif_is_mesh(vif)) {
   ret = wl1271_ap_set_probe_resp_tmpl(wl,
           wlvif->basic_rate,
           vif);
   if (ret < 0)
    goto out;
  }

  ret = wlcore_set_beacon_template(wl, vif, 1);
  if (ret < 0)
   goto out;
 }

 ret = wl1271_bss_beacon_info_changed(wl, vif, bss_conf, changed);
 if (ret < 0)
  goto out;

 if (changed & BSS_CHANGED_BEACON_ENABLED) {
  if (bss_conf->enable_beacon) {
   if (!test_bit(WLVIF_FLAG_AP_STARTED, &wlvif->flags)) {
    ret = wl12xx_cmd_role_start_ap(wl, wlvif);
    if (ret < 0)
     goto out;

    ret = wl1271_ap_init_hwenc(wl, wlvif);
    if (ret < 0)
     goto out;

    set_bit(WLVIF_FLAG_AP_STARTED, &wlvif->flags);
    wl1271_debug(DEBUG_AP, "started AP");
   }
  } else {
   if (test_bit(WLVIF_FLAG_AP_STARTED, &wlvif->flags)) {




    if (test_bit(wlvif->role_id, wl->roc_map))
     wl12xx_croc(wl, wlvif->role_id);

    ret = wl12xx_cmd_role_stop_ap(wl, wlvif);
    if (ret < 0)
     goto out;

    clear_bit(WLVIF_FLAG_AP_STARTED, &wlvif->flags);
    clear_bit(WLVIF_FLAG_AP_PROBE_RESP_SET,
       &wlvif->flags);
    wl1271_debug(DEBUG_AP, "stopped AP");
   }
  }
 }

 ret = wl1271_bss_erp_info_changed(wl, vif, bss_conf, changed);
 if (ret < 0)
  goto out;


 if ((changed & BSS_CHANGED_HT) &&
     (bss_conf->chandef.width != NL80211_CHAN_WIDTH_20_NOHT)) {
  ret = wl1271_acx_set_ht_information(wl, wlvif,
     bss_conf->ht_operation_mode);
  if (ret < 0) {
   wl1271_warning("Set ht information failed %d", ret);
   goto out;
  }
 }

out:
 return;
}
