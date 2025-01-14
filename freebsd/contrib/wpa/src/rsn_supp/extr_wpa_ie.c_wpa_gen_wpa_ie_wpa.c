
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct wpa_ie_hdr {int len; int version; int * oui; int elem_id; } ;


 int MSG_WARNING ;
 int RSN_SELECTOR_PUT (int *,scalar_t__) ;
 int WLAN_EID_VENDOR_SPECIFIC ;
 int WPA_ASSERT (int) ;
 scalar_t__ WPA_AUTH_KEY_MGMT_CCKM ;
 scalar_t__ WPA_AUTH_KEY_MGMT_NONE ;
 scalar_t__ WPA_AUTH_KEY_MGMT_PSK_OVER_802_1X ;
 scalar_t__ WPA_AUTH_KEY_MGMT_UNSPEC_802_1X ;
 int WPA_CIPHER_NONE ;
 int WPA_KEY_MGMT_CCKM ;
 int WPA_KEY_MGMT_IEEE8021X ;
 int WPA_KEY_MGMT_PSK ;
 int WPA_KEY_MGMT_WPA_NONE ;
 scalar_t__ WPA_OUI_TYPE ;
 int WPA_PROTO_WPA ;
 int WPA_PUT_LE16 (int ,int ) ;
 int WPA_SELECTOR_LEN ;
 int WPA_VERSION ;
 scalar_t__ wpa_cipher_to_suite (int ,int) ;
 int wpa_cipher_valid_pairwise (int) ;
 int wpa_printf (int ,char*,int) ;

__attribute__((used)) static int wpa_gen_wpa_ie_wpa(u8 *wpa_ie, size_t wpa_ie_len,
         int pairwise_cipher, int group_cipher,
         int key_mgmt)
{
 u8 *pos;
 struct wpa_ie_hdr *hdr;
 u32 suite;

 if (wpa_ie_len < sizeof(*hdr) + WPA_SELECTOR_LEN +
     2 + WPA_SELECTOR_LEN + 2 + WPA_SELECTOR_LEN)
  return -1;

 hdr = (struct wpa_ie_hdr *) wpa_ie;
 hdr->elem_id = WLAN_EID_VENDOR_SPECIFIC;
 RSN_SELECTOR_PUT(hdr->oui, WPA_OUI_TYPE);
 WPA_PUT_LE16(hdr->version, WPA_VERSION);
 pos = (u8 *) (hdr + 1);

 suite = wpa_cipher_to_suite(WPA_PROTO_WPA, group_cipher);
 if (suite == 0) {
  wpa_printf(MSG_WARNING, "Invalid group cipher (%d).",
      group_cipher);
  return -1;
 }
 RSN_SELECTOR_PUT(pos, suite);
 pos += WPA_SELECTOR_LEN;

 *pos++ = 1;
 *pos++ = 0;
 suite = wpa_cipher_to_suite(WPA_PROTO_WPA, pairwise_cipher);
 if (suite == 0 ||
     (!wpa_cipher_valid_pairwise(pairwise_cipher) &&
      pairwise_cipher != WPA_CIPHER_NONE)) {
  wpa_printf(MSG_WARNING, "Invalid pairwise cipher (%d).",
      pairwise_cipher);
  return -1;
 }
 RSN_SELECTOR_PUT(pos, suite);
 pos += WPA_SELECTOR_LEN;

 *pos++ = 1;
 *pos++ = 0;
 if (key_mgmt == WPA_KEY_MGMT_IEEE8021X) {
  RSN_SELECTOR_PUT(pos, WPA_AUTH_KEY_MGMT_UNSPEC_802_1X);
 } else if (key_mgmt == WPA_KEY_MGMT_PSK) {
  RSN_SELECTOR_PUT(pos, WPA_AUTH_KEY_MGMT_PSK_OVER_802_1X);
 } else if (key_mgmt == WPA_KEY_MGMT_WPA_NONE) {
  RSN_SELECTOR_PUT(pos, WPA_AUTH_KEY_MGMT_NONE);
 } else if (key_mgmt == WPA_KEY_MGMT_CCKM) {
  RSN_SELECTOR_PUT(pos, WPA_AUTH_KEY_MGMT_CCKM);
 } else {
  wpa_printf(MSG_WARNING, "Invalid key management type (%d).",
      key_mgmt);
  return -1;
 }
 pos += WPA_SELECTOR_LEN;



 hdr->len = (pos - wpa_ie) - 2;

 WPA_ASSERT((size_t) (pos - wpa_ie) <= wpa_ie_len);

 return pos - wpa_ie;
}
