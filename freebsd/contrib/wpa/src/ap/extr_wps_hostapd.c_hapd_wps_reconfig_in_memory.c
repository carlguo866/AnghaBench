
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wps_credential {int ssid_len; int auth_type; int encr_type; int key_len; scalar_t__ key; scalar_t__ ssid; } ;
struct hostapd_wpa_psk {int dummy; } ;
struct hostapd_data {int iface; struct hostapd_bss_config* conf; TYPE_1__* iconf; } ;
struct TYPE_5__ {int ssid_len; int ssid_set; int * wpa_passphrase; TYPE_3__* wpa_psk; int * ssid; } ;
struct hostapd_bss_config {int wps_state; int wpa; scalar_t__ ieee80211w; int sae_require_mfp; int auth_algs; TYPE_2__ ssid; int wpa_key_mgmt; scalar_t__ wps_cred_add_sae; int rsn_pairwise; int wpa_pairwise; int wpa_group; } ;
struct TYPE_6__ {int group; int psk; } ;
struct TYPE_4__ {scalar_t__ hw_mode; } ;


 scalar_t__ HOSTAPD_MODE_IEEE80211AD ;
 scalar_t__ MGMT_FRAME_PROTECTION_OPTIONAL ;
 int MSG_DEBUG ;
 scalar_t__ NO_MGMT_FRAME_PROTECTION ;
 int PMK_LEN ;
 int SSID_MAX_LEN ;
 int WPA_CIPHER_CCMP ;
 int WPA_CIPHER_GCMP ;
 int WPA_CIPHER_TKIP ;
 int WPA_KEY_MGMT_IEEE8021X ;
 int WPA_KEY_MGMT_PSK ;
 int WPA_KEY_MGMT_SAE ;
 int WPS_AUTH_WPA ;
 int WPS_AUTH_WPA2 ;
 int WPS_AUTH_WPA2PSK ;
 int WPS_AUTH_WPAPSK ;
 int WPS_ENCR_AES ;
 int WPS_ENCR_TKIP ;
 int eloop_register_timeout (int ,int,int ,int ,int *) ;
 scalar_t__ hexstr2bin (char const*,int ,int) ;
 int hostapd_config_clear_wpa_psk (TYPE_3__**) ;
 int os_free (int *) ;
 int os_memcpy (int *,scalar_t__,int) ;
 void* os_zalloc (int) ;
 int wpa_printf (int ,char*) ;
 int wpa_select_ap_group_cipher (int,int ,int ) ;
 int wps_reload_config ;

__attribute__((used)) static int hapd_wps_reconfig_in_memory(struct hostapd_data *hapd,
           const struct wps_credential *cred)
{
 struct hostapd_bss_config *bss = hapd->conf;

 wpa_printf(MSG_DEBUG, "WPS: Updating in-memory configuration");

 bss->wps_state = 2;
 if (cred->ssid_len <= SSID_MAX_LEN) {
  os_memcpy(bss->ssid.ssid, cred->ssid, cred->ssid_len);
  bss->ssid.ssid_len = cred->ssid_len;
  bss->ssid.ssid_set = 1;
 }

 if ((cred->auth_type & (WPS_AUTH_WPA2 | WPS_AUTH_WPA2PSK)) &&
     (cred->auth_type & (WPS_AUTH_WPA | WPS_AUTH_WPAPSK)))
  bss->wpa = 3;
 else if (cred->auth_type & (WPS_AUTH_WPA2 | WPS_AUTH_WPA2PSK))
  bss->wpa = 2;
 else if (cred->auth_type & (WPS_AUTH_WPA | WPS_AUTH_WPAPSK))
  bss->wpa = 1;
 else
  bss->wpa = 0;

 if (bss->wpa) {
  if (cred->auth_type & (WPS_AUTH_WPA2 | WPS_AUTH_WPA))
   bss->wpa_key_mgmt = WPA_KEY_MGMT_IEEE8021X;
  if (cred->auth_type & (WPS_AUTH_WPA2PSK | WPS_AUTH_WPAPSK))
   bss->wpa_key_mgmt = WPA_KEY_MGMT_PSK;

  bss->wpa_pairwise = 0;
  if (cred->encr_type & WPS_ENCR_AES) {
   if (hapd->iconf->hw_mode == HOSTAPD_MODE_IEEE80211AD)
    bss->wpa_pairwise |= WPA_CIPHER_GCMP;
   else
    bss->wpa_pairwise |= WPA_CIPHER_CCMP;
  }
  if (cred->encr_type & WPS_ENCR_TKIP)
   bss->wpa_pairwise |= WPA_CIPHER_TKIP;
  bss->rsn_pairwise = bss->wpa_pairwise;
  bss->wpa_group = wpa_select_ap_group_cipher(bss->wpa,
           bss->wpa_pairwise,
           bss->rsn_pairwise);

  if (hapd->conf->wps_cred_add_sae &&
      (cred->auth_type & WPS_AUTH_WPA2PSK) &&
      cred->key_len != 2 * PMK_LEN) {
   bss->wpa_key_mgmt |= WPA_KEY_MGMT_SAE;






  }

  if (cred->key_len >= 8 && cred->key_len < 64) {
   os_free(bss->ssid.wpa_passphrase);
   bss->ssid.wpa_passphrase = os_zalloc(cred->key_len + 1);
   if (bss->ssid.wpa_passphrase)
    os_memcpy(bss->ssid.wpa_passphrase, cred->key,
       cred->key_len);
   hostapd_config_clear_wpa_psk(&bss->ssid.wpa_psk);
  } else if (cred->key_len == 64) {
   hostapd_config_clear_wpa_psk(&bss->ssid.wpa_psk);
   bss->ssid.wpa_psk =
    os_zalloc(sizeof(struct hostapd_wpa_psk));
   if (bss->ssid.wpa_psk &&
       hexstr2bin((const char *) cred->key,
           bss->ssid.wpa_psk->psk, PMK_LEN) == 0) {
    bss->ssid.wpa_psk->group = 1;
    os_free(bss->ssid.wpa_passphrase);
    bss->ssid.wpa_passphrase = ((void*)0);
   }
  }
  bss->auth_algs = 1;
 } else {




  bss->auth_algs = 1;
 }




 eloop_register_timeout(0, 100000, wps_reload_config, hapd->iface,
          ((void*)0));

 return 0;
}
