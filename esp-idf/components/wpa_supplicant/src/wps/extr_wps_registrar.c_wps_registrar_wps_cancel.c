
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_registrar {scalar_t__ selected_registrar; scalar_t__ pbc; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*) ;
 int wps_registrar_invalidate_wildcard_pin (struct wps_registrar*,int *,int ) ;
 int wps_registrar_pbc_timeout (struct wps_registrar*) ;
 int wps_registrar_pin_completed (struct wps_registrar*) ;

int wps_registrar_wps_cancel(struct wps_registrar *reg)
{
 if (reg->pbc) {
  wpa_printf(MSG_DEBUG, "WPS: PBC is set - cancelling it");
  wps_registrar_pbc_timeout(reg);

  return 1;
 } else if (reg->selected_registrar) {
 }
 return 0;
}
