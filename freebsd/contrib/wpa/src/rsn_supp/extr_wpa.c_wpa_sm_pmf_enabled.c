
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_sm {scalar_t__ mfp; int ap_rsn_ie_len; int ap_rsn_ie; } ;
struct wpa_ie_data {int capabilities; } ;


 scalar_t__ NO_MGMT_FRAME_PROTECTION ;
 int WPA_CAPABILITY_MFPC ;
 int WPA_CAPABILITY_MFPR ;
 scalar_t__ wpa_parse_wpa_ie_rsn (int ,int ,struct wpa_ie_data*) ;

int wpa_sm_pmf_enabled(struct wpa_sm *sm)
{
 struct wpa_ie_data rsn;

 if (sm->mfp == NO_MGMT_FRAME_PROTECTION || !sm->ap_rsn_ie)
  return 0;

 if (wpa_parse_wpa_ie_rsn(sm->ap_rsn_ie, sm->ap_rsn_ie_len, &rsn) >= 0 &&
     rsn.capabilities & (WPA_CAPABILITY_MFPR | WPA_CAPABILITY_MFPC))
  return 1;

 return 0;
}
