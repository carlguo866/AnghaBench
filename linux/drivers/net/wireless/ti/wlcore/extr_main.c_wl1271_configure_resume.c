
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wl12xx_vif {scalar_t__ bss_type; int flags; } ;
struct TYPE_3__ {scalar_t__ suspend_wake_up_event; scalar_t__ wake_up_event; scalar_t__ suspend_listen_interval; scalar_t__ listen_interval; } ;
struct TYPE_4__ {TYPE_1__ conn; } ;
struct wl1271 {TYPE_2__ conf; } ;


 scalar_t__ BSS_TYPE_AP_BSS ;
 scalar_t__ BSS_TYPE_STA_BSS ;
 int WLVIF_FLAG_AP_STARTED ;
 int WLVIF_FLAG_STA_ASSOCIATED ;
 int test_bit (int ,int *) ;
 int wl1271_acx_beacon_filter_opt (struct wl1271*,struct wl12xx_vif*,int) ;
 int wl1271_acx_wake_up_conditions (struct wl1271*,struct wl12xx_vif*,scalar_t__,scalar_t__) ;
 int wl1271_configure_wowlan (struct wl1271*,int *) ;
 int wl1271_error (char*,int) ;

__attribute__((used)) static void wl1271_configure_resume(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
 int ret = 0;
 bool is_ap = wlvif->bss_type == BSS_TYPE_AP_BSS;
 bool is_sta = wlvif->bss_type == BSS_TYPE_STA_BSS;

 if ((!is_ap) && (!is_sta))
  return;

 if ((is_sta && !test_bit(WLVIF_FLAG_STA_ASSOCIATED, &wlvif->flags)) ||
     (is_ap && !test_bit(WLVIF_FLAG_AP_STARTED, &wlvif->flags)))
  return;

 wl1271_configure_wowlan(wl, ((void*)0));

 if (is_sta) {
  if ((wl->conf.conn.suspend_wake_up_event ==
       wl->conf.conn.wake_up_event) &&
      (wl->conf.conn.suspend_listen_interval ==
       wl->conf.conn.listen_interval))
   return;

  ret = wl1271_acx_wake_up_conditions(wl, wlvif,
        wl->conf.conn.wake_up_event,
        wl->conf.conn.listen_interval);

  if (ret < 0)
   wl1271_error("resume: wake up conditions failed: %d",
         ret);

 } else if (is_ap) {
  ret = wl1271_acx_beacon_filter_opt(wl, wlvif, 0);
 }
}
