
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wpa_eapol_key {scalar_t__ type; int key_info; } ;
struct ieee802_1x_hdr {scalar_t__ version; scalar_t__ type; int length; } ;


 scalar_t__ EAPOL_KEY_TYPE_RSN ;
 scalar_t__ EAPOL_VERSION ;
 scalar_t__ IEEE802_1X_TYPE_EAPOL_KEY ;
 int MSG_DEBUG ;
 int WPA_GET_BE16 (int ) ;
 int WPA_KEY_INFO_ACK ;
 size_t be_to_host16 (int ) ;
 int wpa_printf (int ,char*,scalar_t__,...) ;

__attribute__((used)) static int ibss_rsn_eapol_dst_supp(const u8 *buf, size_t len)
{
 const struct ieee802_1x_hdr *hdr;
 const struct wpa_eapol_key *key;
 u16 key_info;
 size_t plen;



 if (len < sizeof(*hdr) + sizeof(*key))
  return -1;

 hdr = (const struct ieee802_1x_hdr *) buf;
 key = (const struct wpa_eapol_key *) (hdr + 1);
 plen = be_to_host16(hdr->length);

 if (hdr->version < EAPOL_VERSION) {

 }
 if (hdr->type != IEEE802_1X_TYPE_EAPOL_KEY) {
  wpa_printf(MSG_DEBUG, "RSN: EAPOL frame (type %u) discarded, "
   "not a Key frame", hdr->type);
  return -1;
 }
 if (plen > len - sizeof(*hdr) || plen < sizeof(*key)) {
  wpa_printf(MSG_DEBUG, "RSN: EAPOL frame payload size %lu "
      "invalid (frame size %lu)",
      (unsigned long) plen, (unsigned long) len);
  return -1;
 }

 if (key->type != EAPOL_KEY_TYPE_RSN) {
  wpa_printf(MSG_DEBUG, "RSN: EAPOL-Key type (%d) unknown, "
      "discarded", key->type);
  return -1;
 }

 key_info = WPA_GET_BE16(key->key_info);

 return !!(key_info & WPA_KEY_INFO_ACK);
}
