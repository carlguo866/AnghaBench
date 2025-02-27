
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wpa_scan_res {int caps; scalar_t__ freq; scalar_t__ level; scalar_t__ ie_len; } ;
struct wpa_bss {int caps; scalar_t__ freq; scalar_t__ level; scalar_t__ ie_len; } ;


 int IEEE80211_CAP_IBSS ;
 int IEEE80211_CAP_PRIVACY ;
 int WLAN_EID_EXT_SUPP_RATES ;
 int WLAN_EID_RSN ;
 int WLAN_EID_SUPP_RATES ;
 int WPA_BSS_FREQ_CHANGED_FLAG ;
 int WPA_BSS_IES_CHANGED_FLAG ;
 int WPA_BSS_MODE_CHANGED_FLAG ;
 int WPA_BSS_PRIVACY_CHANGED_FLAG ;
 int WPA_BSS_RATES_CHANGED_FLAG ;
 int WPA_BSS_RSNIE_CHANGED_FLAG ;
 int WPA_BSS_SIGNAL_CHANGED_FLAG ;
 int WPA_BSS_WPAIE_CHANGED_FLAG ;
 int WPA_BSS_WPS_CHANGED_FLAG ;
 int WPA_IE_VENDOR_TYPE ;
 int WPS_IE_VENDOR_TYPE ;
 int are_ies_equal (struct wpa_bss const*,struct wpa_scan_res const*,int ) ;
 scalar_t__ os_memcmp (struct wpa_bss const*,struct wpa_scan_res const*,scalar_t__) ;

__attribute__((used)) static u32 wpa_bss_compare_res(const struct wpa_bss *old,
          const struct wpa_scan_res *new_res)
{
 u32 changes = 0;
 int caps_diff = old->caps ^ new_res->caps;

 if (old->freq != new_res->freq)
  changes |= WPA_BSS_FREQ_CHANGED_FLAG;

 if (old->level != new_res->level)
  changes |= WPA_BSS_SIGNAL_CHANGED_FLAG;

 if (caps_diff & IEEE80211_CAP_PRIVACY)
  changes |= WPA_BSS_PRIVACY_CHANGED_FLAG;

 if (caps_diff & IEEE80211_CAP_IBSS)
  changes |= WPA_BSS_MODE_CHANGED_FLAG;

 if (old->ie_len == new_res->ie_len &&
     os_memcmp(old + 1, new_res + 1, old->ie_len) == 0)
  return changes;
 changes |= WPA_BSS_IES_CHANGED_FLAG;

 if (!are_ies_equal(old, new_res, WPA_IE_VENDOR_TYPE))
  changes |= WPA_BSS_WPAIE_CHANGED_FLAG;

 if (!are_ies_equal(old, new_res, WLAN_EID_RSN))
  changes |= WPA_BSS_RSNIE_CHANGED_FLAG;

 if (!are_ies_equal(old, new_res, WPS_IE_VENDOR_TYPE))
  changes |= WPA_BSS_WPS_CHANGED_FLAG;

 if (!are_ies_equal(old, new_res, WLAN_EID_SUPP_RATES) ||
     !are_ies_equal(old, new_res, WLAN_EID_EXT_SUPP_RATES))
  changes |= WPA_BSS_RATES_CHANGED_FLAG;

 return changes;
}
