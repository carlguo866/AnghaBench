
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;
struct wpa_scan_results {size_t num; int * res; } ;


 int wpas_wps_dump_ap_info (struct wpa_supplicant*) ;
 int wpas_wps_update_ap_info_bss (struct wpa_supplicant*,int ) ;

void wpas_wps_update_ap_info(struct wpa_supplicant *wpa_s,
        struct wpa_scan_results *scan_res)
{
 size_t i;

 for (i = 0; i < scan_res->num; i++)
  wpas_wps_update_ap_info_bss(wpa_s, scan_res->res[i]);

 wpas_wps_dump_ap_info(wpa_s);
}
