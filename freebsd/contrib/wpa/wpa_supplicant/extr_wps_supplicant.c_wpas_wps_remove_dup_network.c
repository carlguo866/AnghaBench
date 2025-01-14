
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* conf; struct wpa_ssid* current_ssid; } ;
struct wpa_ssid {scalar_t__ bssid_set; scalar_t__ ssid_len; scalar_t__ auth_alg; scalar_t__ key_mgmt; int group_cipher; scalar_t__ wps_run; int id; int pairwise_cipher; int proto; scalar_t__ passphrase; scalar_t__ psk; scalar_t__ psk_set; scalar_t__ ssid; scalar_t__ bssid; struct wpa_ssid* next; } ;
struct TYPE_2__ {struct wpa_ssid* ssid; } ;


 int ETH_ALEN ;
 int MSG_DEBUG ;
 int WPA_CIPHER_CCMP ;
 scalar_t__ os_memcmp (scalar_t__,scalar_t__,int) ;
 scalar_t__ os_strcmp (scalar_t__,scalar_t__) ;
 int wpa_config_remove_network (TYPE_1__*,int ) ;
 scalar_t__ wpa_key_mgmt_wpa_psk (scalar_t__) ;
 int wpa_printf (int ,char*,...) ;
 int wpas_notify_network_removed (struct wpa_supplicant*,struct wpa_ssid*) ;

__attribute__((used)) static void wpas_wps_remove_dup_network(struct wpa_supplicant *wpa_s,
     struct wpa_ssid *new_ssid)
{
 struct wpa_ssid *ssid, *next;

 for (ssid = wpa_s->conf->ssid, next = ssid ? ssid->next : ((void*)0); ssid;
      ssid = next, next = ssid ? ssid->next : ((void*)0)) {




  if (ssid == new_ssid)
   continue;

  if (ssid->bssid_set || new_ssid->bssid_set) {
   if (ssid->bssid_set != new_ssid->bssid_set)
    continue;
   if (os_memcmp(ssid->bssid, new_ssid->bssid, ETH_ALEN) !=
       0)
    continue;
  }


  if (ssid->ssid_len == 0 || ssid->ssid_len != new_ssid->ssid_len)
   continue;

  if (ssid->ssid && new_ssid->ssid) {
   if (os_memcmp(ssid->ssid, new_ssid->ssid,
          ssid->ssid_len) != 0)
    continue;
  } else if (ssid->ssid || new_ssid->ssid)
   continue;


  if (ssid->auth_alg != new_ssid->auth_alg ||
      ssid->key_mgmt != new_ssid->key_mgmt ||
      (ssid->group_cipher != new_ssid->group_cipher &&
       !(ssid->group_cipher & new_ssid->group_cipher &
         WPA_CIPHER_CCMP)))
   continue;







  if (ssid->wps_run && ssid->wps_run == new_ssid->wps_run &&
      wpa_key_mgmt_wpa_psk(ssid->key_mgmt)) {
   if (new_ssid->passphrase && ssid->passphrase &&
       os_strcmp(new_ssid->passphrase, ssid->passphrase) !=
       0) {
    wpa_printf(MSG_DEBUG,
        "WPS: M8 Creds with different passphrase - do not merge");
    continue;
   }

   if (new_ssid->psk_set &&
       (!ssid->psk_set ||
        os_memcmp(new_ssid->psk, ssid->psk, 32) != 0)) {
    wpa_printf(MSG_DEBUG,
        "WPS: M8 Creds with different PSK - do not merge");
    continue;
   }

   if ((new_ssid->passphrase && !ssid->passphrase) ||
       (!new_ssid->passphrase && ssid->passphrase)) {
    wpa_printf(MSG_DEBUG,
        "WPS: M8 Creds with different passphrase/PSK type - do not merge");
    continue;
   }

   wpa_printf(MSG_DEBUG,
       "WPS: Workaround - merge likely WPA/WPA2-mixed mode creds in same M8 message");
   new_ssid->proto |= ssid->proto;
   new_ssid->pairwise_cipher |= ssid->pairwise_cipher;
  } else {




   if (ssid->proto != new_ssid->proto ||
       ssid->pairwise_cipher != new_ssid->pairwise_cipher)
    continue;
  }


  wpa_printf(MSG_DEBUG, "Remove duplicate network %d", ssid->id);
  wpas_notify_network_removed(wpa_s, ssid);
  if (wpa_s->current_ssid == ssid)
   wpa_s->current_ssid = ((void*)0);
  wpa_config_remove_network(wpa_s->conf, ssid->id);
 }
}
