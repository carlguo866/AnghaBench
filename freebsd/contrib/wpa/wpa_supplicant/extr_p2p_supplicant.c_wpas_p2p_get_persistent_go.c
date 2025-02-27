
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* conf; } ;
struct wpa_ssid {int disabled; scalar_t__ mode; struct wpa_ssid* next; } ;
struct TYPE_2__ {struct wpa_ssid* ssid; } ;


 scalar_t__ WPAS_MODE_P2P_GO ;

__attribute__((used)) static struct wpa_ssid *
wpas_p2p_get_persistent_go(struct wpa_supplicant *wpa_s)
{
 struct wpa_ssid *s;

 for (s = wpa_s->conf->ssid; s; s = s->next) {
  if (s->disabled == 2 && s->mode == WPAS_MODE_P2P_GO)
   return s;
 }

 return ((void*)0);
}
