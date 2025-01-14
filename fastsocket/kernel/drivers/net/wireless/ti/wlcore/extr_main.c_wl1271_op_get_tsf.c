
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct wl12xx_vif {int dummy; } ;
struct wl1271 {scalar_t__ state; int mutex; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct wl1271* priv; } ;


 int DEBUG_MAC80211 ;
 int ULLONG_MAX ;
 scalar_t__ WLCORE_STATE_ON ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_ps_elp_sleep (struct wl1271*) ;
 int wl1271_ps_elp_wakeup (struct wl1271*) ;
 int wl12xx_acx_tsf_info (struct wl1271*,struct wl12xx_vif*,int *) ;
 struct wl12xx_vif* wl12xx_vif_to_data (struct ieee80211_vif*) ;

__attribute__((used)) static u64 wl1271_op_get_tsf(struct ieee80211_hw *hw,
        struct ieee80211_vif *vif)
{

 struct wl1271 *wl = hw->priv;
 struct wl12xx_vif *wlvif = wl12xx_vif_to_data(vif);
 u64 mactime = ULLONG_MAX;
 int ret;

 wl1271_debug(DEBUG_MAC80211, "mac80211 get tsf");

 mutex_lock(&wl->mutex);

 if (unlikely(wl->state != WLCORE_STATE_ON))
  goto out;

 ret = wl1271_ps_elp_wakeup(wl);
 if (ret < 0)
  goto out;

 ret = wl12xx_acx_tsf_info(wl, wlvif, &mactime);
 if (ret < 0)
  goto out_sleep;

out_sleep:
 wl1271_ps_elp_sleep(wl);

out:
 mutex_unlock(&wl->mutex);
 return mactime;
}
