
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
struct wps_registrar {scalar_t__ static_wep_only; TYPE_1__* wps; scalar_t__ dualband; int * set_ie_cb; } ;
struct wpabuf {int dummy; } ;
typedef int ms_wps ;
struct TYPE_9__ {scalar_t__* vendor_ext; } ;
struct TYPE_8__ {TYPE_2__ dev; int uuid; scalar_t__ ap; } ;


 int MAX_WPS_VENDOR_EXTENSIONS ;
 int MSG_DEBUG ;
 int WLAN_EID_VENDOR_SPECIFIC ;
 int WPS_RESP_AP ;
 int WPS_RESP_REGISTRAR ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_free (struct wpabuf*) ;
 scalar_t__ wpabuf_len (scalar_t__) ;
 int wpabuf_put_data (struct wpabuf*,int const*,int) ;
 int* wps_authorized_macs (struct wps_registrar*,size_t*) ;
 scalar_t__ wps_build_ap_setup_locked (TYPE_1__*,struct wpabuf*) ;
 scalar_t__ wps_build_dev_name (TYPE_2__*,struct wpabuf*) ;
 scalar_t__ wps_build_device_attrs (TYPE_2__*,struct wpabuf*) ;
 scalar_t__ wps_build_primary_dev_type (TYPE_2__*,struct wpabuf*) ;
 scalar_t__ wps_build_probe_config_methods (struct wps_registrar*,struct wpabuf*) ;
 scalar_t__ wps_build_resp_type (struct wpabuf*,int ) ;
 scalar_t__ wps_build_rf_bands (TYPE_2__*,struct wpabuf*) ;
 scalar_t__ wps_build_sel_pbc_reg_uuid_e (struct wps_registrar*,struct wpabuf*) ;
 scalar_t__ wps_build_sel_reg_config_methods (struct wps_registrar*,struct wpabuf*) ;
 scalar_t__ wps_build_sel_reg_dev_password_id (struct wps_registrar*,struct wpabuf*) ;
 scalar_t__ wps_build_selected_registrar (struct wps_registrar*,struct wpabuf*) ;
 scalar_t__ wps_build_uuid_e (struct wpabuf*,int ) ;
 scalar_t__ wps_build_vendor_ext (TYPE_2__*,struct wpabuf*) ;
 scalar_t__ wps_build_version (struct wpabuf*) ;
 scalar_t__ wps_build_wfa_ext (struct wpabuf*,int ,int const*,size_t) ;
 scalar_t__ wps_build_wps_state (TYPE_1__*,struct wpabuf*) ;
 int wps_cb_set_ie (struct wps_registrar*,struct wpabuf*,struct wpabuf*) ;
 struct wpabuf* wps_ie_encapsulate (struct wpabuf*) ;

__attribute__((used)) static int wps_set_ie(struct wps_registrar *reg)
{
 struct wpabuf *beacon;
 struct wpabuf *probe;
 const u8 *auth_macs;
 size_t count;
 size_t vendor_len = 0;
 int i;

 if (reg->set_ie_cb == ((void*)0))
  return 0;

 for (i = 0; i < MAX_WPS_VENDOR_EXTENSIONS; i++) {
  if (reg->wps->dev.vendor_ext[i]) {
   vendor_len += 2 + 2;
   vendor_len += wpabuf_len(reg->wps->dev.vendor_ext[i]);
  }
 }

 beacon = wpabuf_alloc(400 + vendor_len);
 if (beacon == ((void*)0))
  return -1;
 probe = wpabuf_alloc(500 + vendor_len);
 if (probe == ((void*)0)) {
  wpabuf_free(beacon);
  return -1;
 }

 auth_macs = wps_authorized_macs(reg, &count);

 wpa_printf(MSG_DEBUG, "WPS: Build Beacon IEs");

 if (wps_build_version(beacon) ||
     wps_build_wps_state(reg->wps, beacon) ||
     wps_build_ap_setup_locked(reg->wps, beacon) ||
     wps_build_selected_registrar(reg, beacon) ||
     wps_build_sel_reg_dev_password_id(reg, beacon) ||
     wps_build_sel_reg_config_methods(reg, beacon) ||
     wps_build_sel_pbc_reg_uuid_e(reg, beacon) ||
     (reg->dualband && wps_build_rf_bands(&reg->wps->dev, beacon)) ||
     wps_build_wfa_ext(beacon, 0, auth_macs, count) ||
     wps_build_vendor_ext(&reg->wps->dev, beacon)) {
  wpabuf_free(beacon);
  wpabuf_free(probe);
  return -1;
 }
 wpa_printf(MSG_DEBUG, "WPS: Build Probe Response IEs");

 if (wps_build_version(probe) ||
     wps_build_wps_state(reg->wps, probe) ||
     wps_build_ap_setup_locked(reg->wps, probe) ||
     wps_build_selected_registrar(reg, probe) ||
     wps_build_sel_reg_dev_password_id(reg, probe) ||
     wps_build_sel_reg_config_methods(reg, probe) ||
     wps_build_resp_type(probe, reg->wps->ap ? WPS_RESP_AP :
    WPS_RESP_REGISTRAR) ||
     wps_build_uuid_e(probe, reg->wps->uuid) ||
     wps_build_device_attrs(&reg->wps->dev, probe) ||
     wps_build_probe_config_methods(reg, probe) ||
     (reg->dualband && wps_build_rf_bands(&reg->wps->dev, probe)) ||
     wps_build_wfa_ext(probe, 0, auth_macs, count) ||
     wps_build_vendor_ext(&reg->wps->dev, probe)) {
  wpabuf_free(beacon);
  wpabuf_free(probe);
  return -1;
 }

 beacon = wps_ie_encapsulate(beacon);
 probe = wps_ie_encapsulate(probe);

 if (!beacon || !probe) {
  wpabuf_free(beacon);
  wpabuf_free(probe);
  return -1;
 }

 if (reg->static_wep_only) {
  const u8 ms_wps[7] = {
   WLAN_EID_VENDOR_SPECIFIC, 5,

   0x00, 0x50, 0xf2, 5,
   0x00
  };
  wpa_printf(MSG_DEBUG, "WPS: Add Microsoft Provisioning IE "
      "into Beacon/Probe Response frames");
  wpabuf_put_data(beacon, ms_wps, sizeof(ms_wps));
  wpabuf_put_data(probe, ms_wps, sizeof(ms_wps));
 }

 return wps_cb_set_ie(reg, beacon, probe);
}
