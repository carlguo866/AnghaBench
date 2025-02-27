
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct wpa_supplicant {unsigned int max_sched_scan_ssids; int normal_scans; int max_scan_ssids; size_t max_match_sets; int wpa_state; unsigned int sched_scan_timeout; int first_sched_scan; int enable_oce; int sched_scan_plans_num; int max_sched_scan_plan_interval; int mac_addr_rand_enable; struct wpa_ssid* prev_sched_ssid; scalar_t__ sched_scan_timed_out; scalar_t__ mac_addr_sched_scan; TYPE_2__* conf; struct sched_scan_plan* sched_scan_plans; struct wpa_driver_scan_params* autoscan_params; scalar_t__ sched_scanning; scalar_t__ sched_scan_stop_req; int sched_scan_supported; } ;
struct wpa_ssid {scalar_t__ key_mgmt; struct wpa_ssid* next; scalar_t__ scan_ssid; scalar_t__ ssid_len; scalar_t__ ssid; } ;
struct wpa_driver_scan_params {unsigned int num_ssids; size_t num_filter_ssids; int oce_scan; int sched_scan_plans_num; int sched_scan_start_delay; int mac_addr_rand; struct sched_scan_plan* sched_scan_plans; TYPE_3__* filter_ssids; scalar_t__ mac_addr_mask; scalar_t__ mac_addr; int freqs; scalar_t__ filter_rssi; int extra_ies_len; int extra_ies; TYPE_1__* ssids; } ;
struct wpa_driver_scan_filter {int dummy; } ;
struct sched_scan_plan {int interval; scalar_t__ iterations; } ;
typedef int params ;
typedef enum wpa_states { ____Placeholder_wpa_states } wpa_states ;
struct TYPE_7__ {scalar_t__ ssid_len; int ssid; } ;
struct TYPE_6__ {int sched_scan_interval; int sched_scan_start_delay; int freq_list; scalar_t__ filter_rssi; struct wpa_ssid* ssid; scalar_t__ disable_scan_offload; } ;
struct TYPE_5__ {scalar_t__ ssid_len; scalar_t__ ssid; } ;


 scalar_t__ ETH_ALEN ;
 int MAC_ADDR_RAND_SCHED_SCAN ;
 int MSG_DEBUG ;
 int MSG_WARNING ;
 int OCE_STA ;
 unsigned int WPAS_MAX_SCAN_SSIDS ;
 scalar_t__ WPA_DISCONNECTED ;
 scalar_t__ WPA_INACTIVE ;
 scalar_t__ WPA_KEY_MGMT_WPS ;
 scalar_t__ WPA_SCANNING ;
 int eloop_register_timeout (unsigned int,int ,int ,struct wpa_supplicant*,int *) ;
 int int_array_concat (int *,int ) ;
 TYPE_3__* os_calloc (size_t,int) ;
 int os_free (TYPE_3__*) ;
 int os_memcpy (int ,scalar_t__,scalar_t__) ;
 int os_memset (struct wpa_driver_scan_params*,int ,int) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*,...) ;
 int wpa_msg (struct wpa_supplicant*,int ,char*) ;
 int wpa_printf (int ,char*,int,int) ;
 int wpa_scan_set_relative_rssi_params (struct wpa_supplicant*,struct wpa_driver_scan_params*) ;
 int wpa_setband_scan_freqs (struct wpa_supplicant*,struct wpa_driver_scan_params*) ;
 int wpa_ssid_txt (scalar_t__,scalar_t__) ;
 struct wpabuf* wpa_supplicant_extra_ies (struct wpa_supplicant*) ;
 int wpa_supplicant_sched_scan_timeout ;
 int wpa_supplicant_set_state (struct wpa_supplicant*,int) ;
 int wpa_supplicant_start_sched_scan (struct wpa_supplicant*,struct wpa_driver_scan_params*) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_head (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 scalar_t__ wpas_network_disabled (struct wpa_supplicant*,struct wpa_ssid*) ;

int wpa_supplicant_req_sched_scan(struct wpa_supplicant *wpa_s)
{
 struct wpa_driver_scan_params params;
 struct wpa_driver_scan_params *scan_params;
 enum wpa_states prev_state;
 struct wpa_ssid *ssid = ((void*)0);
 struct wpabuf *extra_ie = ((void*)0);
 int ret;
 unsigned int max_sched_scan_ssids;
 int wildcard = 0;
 int need_ssids;
 struct sched_scan_plan scan_plan;

 if (!wpa_s->sched_scan_supported)
  return -1;

 if (wpa_s->max_sched_scan_ssids > WPAS_MAX_SCAN_SSIDS)
  max_sched_scan_ssids = WPAS_MAX_SCAN_SSIDS;
 else
  max_sched_scan_ssids = wpa_s->max_sched_scan_ssids;
 if (max_sched_scan_ssids < 1 || wpa_s->conf->disable_scan_offload)
  return -1;

 wpa_s->sched_scan_stop_req = 0;

 if (wpa_s->sched_scanning) {
  wpa_dbg(wpa_s, MSG_DEBUG, "Already sched scanning");
  return 0;
 }

 need_ssids = 0;
 for (ssid = wpa_s->conf->ssid; ssid; ssid = ssid->next) {
  if (!wpas_network_disabled(wpa_s, ssid) && !ssid->scan_ssid) {

   wildcard = 1;
  } else if (!wpas_network_disabled(wpa_s, ssid) &&
      ssid->ssid_len)
   need_ssids++;
 }
 if (wildcard)
  need_ssids++;

 if (wpa_s->normal_scans < 3 &&
     (need_ssids <= wpa_s->max_scan_ssids ||
      wpa_s->max_scan_ssids >= (int) max_sched_scan_ssids)) {







  wpa_dbg(wpa_s, MSG_DEBUG, "Use normal scan instead of "
   "sched_scan for initial scans (normal_scans=%d)",
   wpa_s->normal_scans);
  return -1;
 }

 os_memset(&params, 0, sizeof(params));


 params.filter_ssids = os_calloc(wpa_s->max_match_sets,
     sizeof(struct wpa_driver_scan_filter));

 prev_state = wpa_s->wpa_state;
 if (wpa_s->wpa_state == WPA_DISCONNECTED ||
     wpa_s->wpa_state == WPA_INACTIVE)
  wpa_supplicant_set_state(wpa_s, WPA_SCANNING);

 if (wpa_s->autoscan_params != ((void*)0)) {
  scan_params = wpa_s->autoscan_params;
  goto scan;
 }


 ssid = wpa_s->conf->ssid;
 if (wpa_s->prev_sched_ssid) {
  while (ssid) {
   if (ssid == wpa_s->prev_sched_ssid) {
    ssid = ssid->next;
    break;
   }
   ssid = ssid->next;
  }
 }

 if (!ssid || !wpa_s->prev_sched_ssid) {
  wpa_dbg(wpa_s, MSG_DEBUG, "Beginning of SSID list");
  wpa_s->sched_scan_timeout = max_sched_scan_ssids * 2;
  wpa_s->first_sched_scan = 1;
  ssid = wpa_s->conf->ssid;
  wpa_s->prev_sched_ssid = ssid;
 }

 if (wildcard) {
  wpa_dbg(wpa_s, MSG_DEBUG, "Add wildcard SSID to sched_scan");
  params.num_ssids++;
 }

 while (ssid) {
  if (wpas_network_disabled(wpa_s, ssid))
   goto next;

  if (params.num_filter_ssids < wpa_s->max_match_sets &&
      params.filter_ssids && ssid->ssid && ssid->ssid_len) {
   wpa_dbg(wpa_s, MSG_DEBUG, "add to filter ssid: %s",
    wpa_ssid_txt(ssid->ssid, ssid->ssid_len));
   os_memcpy(params.filter_ssids[params.num_filter_ssids].ssid,
      ssid->ssid, ssid->ssid_len);
   params.filter_ssids[params.num_filter_ssids].ssid_len =
    ssid->ssid_len;
   params.num_filter_ssids++;
  } else if (params.filter_ssids && ssid->ssid && ssid->ssid_len)
  {
   wpa_dbg(wpa_s, MSG_DEBUG, "Not enough room for SSID "
    "filter for sched_scan - drop filter");
   os_free(params.filter_ssids);
   params.filter_ssids = ((void*)0);
   params.num_filter_ssids = 0;
  }

  if (ssid->scan_ssid && ssid->ssid && ssid->ssid_len) {
   if (params.num_ssids == max_sched_scan_ssids)
    break;
   wpa_dbg(wpa_s, MSG_DEBUG,
    "add to active scan ssid: %s",
    wpa_ssid_txt(ssid->ssid, ssid->ssid_len));
   params.ssids[params.num_ssids].ssid =
    ssid->ssid;
   params.ssids[params.num_ssids].ssid_len =
    ssid->ssid_len;
   params.num_ssids++;
   if (params.num_ssids >= max_sched_scan_ssids) {
    wpa_s->prev_sched_ssid = ssid;
    do {
     ssid = ssid->next;
    } while (ssid &&
      (wpas_network_disabled(wpa_s, ssid) ||
       !ssid->scan_ssid));
    break;
   }
  }

 next:
  wpa_s->prev_sched_ssid = ssid;
  ssid = ssid->next;
 }

 if (params.num_filter_ssids == 0) {
  os_free(params.filter_ssids);
  params.filter_ssids = ((void*)0);
 }

 extra_ie = wpa_supplicant_extra_ies(wpa_s);
 if (extra_ie) {
  params.extra_ies = wpabuf_head(extra_ie);
  params.extra_ies_len = wpabuf_len(extra_ie);
 }

 if (wpa_s->conf->filter_rssi)
  params.filter_rssi = wpa_s->conf->filter_rssi;


 if (wpa_s->conf->freq_list && !params.freqs) {
  wpa_dbg(wpa_s, MSG_DEBUG,
   "Optimize scan based on conf->freq_list");
  int_array_concat(&params.freqs, wpa_s->conf->freq_list);
 }






 scan_params = &params;

scan:
 wpa_s->sched_scan_timed_out = 0;






 if (wpa_s->sched_scan_plans_num == 1 ||
     (wpa_s->sched_scan_plans_num && !ssid && wpa_s->first_sched_scan)) {
  params.sched_scan_plans = wpa_s->sched_scan_plans;
  params.sched_scan_plans_num = wpa_s->sched_scan_plans_num;
 } else if (wpa_s->sched_scan_plans_num > 1) {
  wpa_dbg(wpa_s, MSG_DEBUG,
   "Too many SSIDs. Default to using single scheduled_scan plan");
  params.sched_scan_plans =
   &wpa_s->sched_scan_plans[wpa_s->sched_scan_plans_num -
       1];
  params.sched_scan_plans_num = 1;
 } else {
  if (wpa_s->conf->sched_scan_interval)
   scan_plan.interval = wpa_s->conf->sched_scan_interval;
  else
   scan_plan.interval = 10;

  if (scan_plan.interval > wpa_s->max_sched_scan_plan_interval) {
   wpa_printf(MSG_WARNING,
       "Scan interval too long(%u), use the maximum allowed(%u)",
       scan_plan.interval,
       wpa_s->max_sched_scan_plan_interval);
   scan_plan.interval =
    wpa_s->max_sched_scan_plan_interval;
  }

  scan_plan.iterations = 0;
  params.sched_scan_plans = &scan_plan;
  params.sched_scan_plans_num = 1;
 }

 params.sched_scan_start_delay = wpa_s->conf->sched_scan_start_delay;

 if (ssid || !wpa_s->first_sched_scan) {
  wpa_dbg(wpa_s, MSG_DEBUG,
   "Starting sched scan after %u seconds: interval %u timeout %d",
   params.sched_scan_start_delay,
   params.sched_scan_plans[0].interval,
   wpa_s->sched_scan_timeout);
 } else {
  wpa_dbg(wpa_s, MSG_DEBUG,
   "Starting sched scan after %u seconds (no timeout)",
   params.sched_scan_start_delay);
 }

 wpa_setband_scan_freqs(wpa_s, scan_params);

 if ((wpa_s->mac_addr_rand_enable & MAC_ADDR_RAND_SCHED_SCAN) &&
     wpa_s->wpa_state <= WPA_SCANNING) {
  params.mac_addr_rand = 1;
  if (wpa_s->mac_addr_sched_scan) {
   params.mac_addr = wpa_s->mac_addr_sched_scan;
   params.mac_addr_mask = wpa_s->mac_addr_sched_scan +
    ETH_ALEN;
  }
 }

 wpa_scan_set_relative_rssi_params(wpa_s, scan_params);

 ret = wpa_supplicant_start_sched_scan(wpa_s, scan_params);
 wpabuf_free(extra_ie);
 os_free(params.filter_ssids);
 if (ret) {
  wpa_msg(wpa_s, MSG_WARNING, "Failed to initiate sched scan");
  if (prev_state != wpa_s->wpa_state)
   wpa_supplicant_set_state(wpa_s, prev_state);
  return ret;
 }


 if (ssid || !wpa_s->first_sched_scan) {
  wpa_s->sched_scan_timed_out = 0;
  eloop_register_timeout(wpa_s->sched_scan_timeout, 0,
           wpa_supplicant_sched_scan_timeout,
           wpa_s, ((void*)0));
  wpa_s->first_sched_scan = 0;
  wpa_s->sched_scan_timeout /= 2;
  params.sched_scan_plans[0].interval *= 2;
  if ((unsigned int) wpa_s->sched_scan_timeout <
      params.sched_scan_plans[0].interval ||
      params.sched_scan_plans[0].interval >
      wpa_s->max_sched_scan_plan_interval) {
   params.sched_scan_plans[0].interval = 10;
   wpa_s->sched_scan_timeout = max_sched_scan_ssids * 2;
  }
 }


 if (!ssid)
  wpa_s->prev_sched_ssid = ((void*)0);

 return 0;
}
