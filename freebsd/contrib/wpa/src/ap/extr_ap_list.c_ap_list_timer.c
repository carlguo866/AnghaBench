
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct os_reltime {int dummy; } ;
struct hostapd_iface {scalar_t__ olbc_ht; scalar_t__ olbc; struct ap_info* ap_list; TYPE_1__* conf; } ;
struct ap_info {struct ap_info* next; int ht_support; int last_beacon; struct ap_info* prev; } ;
struct TYPE_2__ {int ap_table_expiration_time; } ;


 int MSG_DEBUG ;
 int ap_free_ap (struct hostapd_iface*,struct ap_info*) ;
 scalar_t__ ap_list_beacon_olbc (struct hostapd_iface*,struct ap_info*) ;
 int hostapd_ht_operation_update (struct hostapd_iface*) ;
 int ieee802_11_update_beacons (struct hostapd_iface*) ;
 int os_get_reltime (struct os_reltime*) ;
 int os_reltime_expired (struct os_reltime*,int *,int ) ;
 int wpa_printf (int ,char*) ;

void ap_list_timer(struct hostapd_iface *iface)
{
 struct os_reltime now;
 struct ap_info *ap;
 int set_beacon = 0;

 if (!iface->ap_list)
  return;

 os_get_reltime(&now);

 while (iface->ap_list) {
  ap = iface->ap_list->prev;
  if (!os_reltime_expired(&now, &ap->last_beacon,
     iface->conf->ap_table_expiration_time))
   break;

  ap_free_ap(iface, ap);
 }

 if (iface->olbc || iface->olbc_ht) {
  int olbc = 0;
  int olbc_ht = 0;

  ap = iface->ap_list;
  while (ap && (olbc == 0 || olbc_ht == 0)) {
   if (ap_list_beacon_olbc(iface, ap))
    olbc = 1;
   if (!ap->ht_support)
    olbc_ht = 1;
   ap = ap->next;
  }
  if (!olbc && iface->olbc) {
   wpa_printf(MSG_DEBUG, "OLBC not detected anymore");
   iface->olbc = 0;
   set_beacon++;
  }
 }

 if (set_beacon)
  ieee802_11_update_beacons(iface);
}
