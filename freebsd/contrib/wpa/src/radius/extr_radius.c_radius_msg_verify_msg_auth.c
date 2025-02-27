
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef struct radius_attr_hdr {scalar_t__ type; } const radius_attr_hdr ;
typedef struct radius_attr_hdr const u8 ;
struct radius_msg {size_t attr_used; TYPE_1__* hdr; int buf; } ;
typedef int orig_authenticator ;
struct TYPE_2__ {struct radius_attr_hdr const* authenticator; } ;


 int MD5_MAC_LEN ;
 int MSG_INFO ;
 scalar_t__ RADIUS_ATTR_MESSAGE_AUTHENTICATOR ;
 scalar_t__ hmac_md5 (struct radius_attr_hdr const*,size_t,int ,int ,struct radius_attr_hdr const*) ;
 scalar_t__ os_memcmp_const (struct radius_attr_hdr const*,struct radius_attr_hdr const*,int) ;
 int os_memcpy (struct radius_attr_hdr const*,struct radius_attr_hdr const*,int) ;
 int os_memset (struct radius_attr_hdr const*,int ,int) ;
 struct radius_attr_hdr const* radius_get_attr_hdr (struct radius_msg*,size_t) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_head (int ) ;
 int wpabuf_len (int ) ;

int radius_msg_verify_msg_auth(struct radius_msg *msg, const u8 *secret,
          size_t secret_len, const u8 *req_auth)
{
 u8 auth[MD5_MAC_LEN], orig[MD5_MAC_LEN];
 u8 orig_authenticator[16];
 struct radius_attr_hdr *attr = ((void*)0), *tmp;
 size_t i;

 for (i = 0; i < msg->attr_used; i++) {
  tmp = radius_get_attr_hdr(msg, i);
  if (tmp->type == RADIUS_ATTR_MESSAGE_AUTHENTICATOR) {
   if (attr != ((void*)0)) {
    wpa_printf(MSG_INFO, "Multiple Message-Authenticator attributes in RADIUS message");
    return 1;
   }
   attr = tmp;
  }
 }

 if (attr == ((void*)0)) {
  wpa_printf(MSG_INFO, "No Message-Authenticator attribute found");
  return 1;
 }

 os_memcpy(orig, attr + 1, MD5_MAC_LEN);
 os_memset(attr + 1, 0, MD5_MAC_LEN);
 if (req_auth) {
  os_memcpy(orig_authenticator, msg->hdr->authenticator,
     sizeof(orig_authenticator));
  os_memcpy(msg->hdr->authenticator, req_auth,
     sizeof(msg->hdr->authenticator));
 }
 if (hmac_md5(secret, secret_len, wpabuf_head(msg->buf),
       wpabuf_len(msg->buf), auth) < 0)
  return 1;
 os_memcpy(attr + 1, orig, MD5_MAC_LEN);
 if (req_auth) {
  os_memcpy(msg->hdr->authenticator, orig_authenticator,
     sizeof(orig_authenticator));
 }

 if (os_memcmp_const(orig, auth, MD5_MAC_LEN) != 0) {
  wpa_printf(MSG_INFO, "Invalid Message-Authenticator!");
  return 1;
 }

 return 0;
}
