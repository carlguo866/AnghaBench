
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u16 ;
struct wps_registrar_config {struct wpa_supplicant* cb_ctx; int set_sel_reg_cb; int pin_needed_cb; int new_psk_cb; } ;
struct TYPE_6__ {int config_methods; int num_sec_dev_types; int rf_bands; int mac_addr; int os_version; int sec_dev_type; int pri_dev_type; int serial_number; int model_number; int model_name; int manufacturer; int device_name; } ;
struct wps_context {int config_methods; int auth_types; int encr_types; int * registrar; TYPE_3__ dev; struct wpa_supplicant* cb_ctx; int rf_band_cb; int event_cb; int cred_cb; } ;
struct TYPE_5__ {size_t num_modes; struct hostapd_hw_modes* modes; } ;
struct wpa_supplicant {struct wps_context* wps; int own_addr; TYPE_2__ hw; TYPE_1__* conf; } ;
struct hostapd_hw_modes {scalar_t__ mode; } ;
typedef int rcfg ;
struct TYPE_4__ {int num_sec_device_types; int os_version; int sec_device_type; int device_type; int config_methods; int serial_number; int model_number; int model_name; int manufacturer; int device_name; } ;


 int ETH_ALEN ;
 scalar_t__ HOSTAPD_MODE_IEEE80211A ;
 scalar_t__ HOSTAPD_MODE_IEEE80211AD ;
 scalar_t__ HOSTAPD_MODE_IEEE80211B ;
 scalar_t__ HOSTAPD_MODE_IEEE80211G ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int WPA_GET_BE32 (int ) ;
 int WPS_AUTH_WPA2PSK ;
 int WPS_AUTH_WPAPSK ;
 int WPS_CONFIG_DISPLAY ;
 int WPS_CONFIG_LABEL ;
 int WPS_DEV_TYPE_LEN ;
 int WPS_ENCR_AES ;
 int WPS_ENCR_TKIP ;
 int WPS_RF_24GHZ ;
 int WPS_RF_50GHZ ;
 int WPS_RF_60GHZ ;
 int os_free (struct wps_context*) ;
 int os_memcpy (int ,int ,int) ;
 int os_memset (struct wps_registrar_config*,int ,int) ;
 struct wps_context* os_zalloc (int) ;
 int wpa_printf (int ,char*) ;
 int wpa_supplicant_wps_cred ;
 int wpa_supplicant_wps_event ;
 int wpa_supplicant_wps_rf_band ;
 int wpas_wps_new_psk_cb ;
 int wpas_wps_pin_needed_cb ;
 int wpas_wps_set_sel_reg_cb ;
 int wpas_wps_set_uuid (struct wpa_supplicant*,struct wps_context*) ;
 int wpas_wps_set_vendor_ext_m1 (struct wpa_supplicant*,struct wps_context*) ;
 int wps_config_methods_str2bin (int ) ;
 int wps_fix_config_methods (int) ;
 int * wps_registrar_init (struct wps_context*,struct wps_registrar_config*) ;

int wpas_wps_init(struct wpa_supplicant *wpa_s)
{
 struct wps_context *wps;
 struct wps_registrar_config rcfg;
 struct hostapd_hw_modes *modes;
 u16 m;

 wps = os_zalloc(sizeof(*wps));
 if (wps == ((void*)0))
  return -1;

 wps->cred_cb = wpa_supplicant_wps_cred;
 wps->event_cb = wpa_supplicant_wps_event;
 wps->rf_band_cb = wpa_supplicant_wps_rf_band;
 wps->cb_ctx = wpa_s;

 wps->dev.device_name = wpa_s->conf->device_name;
 wps->dev.manufacturer = wpa_s->conf->manufacturer;
 wps->dev.model_name = wpa_s->conf->model_name;
 wps->dev.model_number = wpa_s->conf->model_number;
 wps->dev.serial_number = wpa_s->conf->serial_number;
 wps->config_methods =
  wps_config_methods_str2bin(wpa_s->conf->config_methods);
 if ((wps->config_methods & (WPS_CONFIG_DISPLAY | WPS_CONFIG_LABEL)) ==
     (WPS_CONFIG_DISPLAY | WPS_CONFIG_LABEL)) {
  wpa_printf(MSG_ERROR, "WPS: Both Label and Display config "
      "methods are not allowed at the same time");
  os_free(wps);
  return -1;
 }
 wps->config_methods = wps_fix_config_methods(wps->config_methods);
 wps->dev.config_methods = wps->config_methods;
 os_memcpy(wps->dev.pri_dev_type, wpa_s->conf->device_type,
    WPS_DEV_TYPE_LEN);

 wps->dev.num_sec_dev_types = wpa_s->conf->num_sec_device_types;
 os_memcpy(wps->dev.sec_dev_type, wpa_s->conf->sec_device_type,
    WPS_DEV_TYPE_LEN * wps->dev.num_sec_dev_types);

 wpas_wps_set_vendor_ext_m1(wpa_s, wps);

 wps->dev.os_version = WPA_GET_BE32(wpa_s->conf->os_version);
 modes = wpa_s->hw.modes;
 if (modes) {
  for (m = 0; m < wpa_s->hw.num_modes; m++) {
   if (modes[m].mode == HOSTAPD_MODE_IEEE80211B ||
       modes[m].mode == HOSTAPD_MODE_IEEE80211G)
    wps->dev.rf_bands |= WPS_RF_24GHZ;
   else if (modes[m].mode == HOSTAPD_MODE_IEEE80211A)
    wps->dev.rf_bands |= WPS_RF_50GHZ;
   else if (modes[m].mode == HOSTAPD_MODE_IEEE80211AD)
    wps->dev.rf_bands |= WPS_RF_60GHZ;
  }
 }
 if (wps->dev.rf_bands == 0) {




  wps->dev.rf_bands = WPS_RF_24GHZ | WPS_RF_50GHZ;
 }
 os_memcpy(wps->dev.mac_addr, wpa_s->own_addr, ETH_ALEN);
 wpas_wps_set_uuid(wpa_s, wps);

 wps->auth_types = WPS_AUTH_WPA2PSK | WPS_AUTH_WPAPSK;
 wps->encr_types = WPS_ENCR_AES | WPS_ENCR_TKIP;

 os_memset(&rcfg, 0, sizeof(rcfg));
 rcfg.new_psk_cb = wpas_wps_new_psk_cb;
 rcfg.pin_needed_cb = wpas_wps_pin_needed_cb;
 rcfg.set_sel_reg_cb = wpas_wps_set_sel_reg_cb;
 rcfg.cb_ctx = wpa_s;

 wps->registrar = wps_registrar_init(wps, &rcfg);
 if (wps->registrar == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "Failed to initialize WPS Registrar");
  os_free(wps);
  return -1;
 }

 wpa_s->wps = wps;

 return 0;
}
