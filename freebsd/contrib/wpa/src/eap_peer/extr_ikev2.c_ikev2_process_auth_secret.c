
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {int prf; } ;
struct ikev2_responder_data {int state; int error_type; TYPE_1__ proposal; int * i_sign_msg; int key_pad_len; int key_pad; int r_nonce_len; int r_nonce; int shared_secret_len; int shared_secret; int keys; int IDi_type; int IDi_len; int IDi; } ;
struct ikev2_prf_alg {size_t hash_len; } ;


 int AUTHENTICATION_FAILED ;
 scalar_t__ AUTH_SHARED_KEY_MIC ;
 int IKEV2_MAX_HASH_LEN ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int NOTIFY ;
 scalar_t__ ikev2_derive_auth_data (int ,int *,int ,int ,int ,int *,int,int ,int ,int ,int ,int ,int ,scalar_t__*) ;
 struct ikev2_prf_alg* ikev2_get_prf (int ) ;
 scalar_t__ os_memcmp_const (scalar_t__ const*,scalar_t__*,size_t) ;
 int wpa_hexdump (int ,char*,scalar_t__ const*,size_t) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_free (int *) ;

__attribute__((used)) static int ikev2_process_auth_secret(struct ikev2_responder_data *data,
         u8 method, const u8 *auth,
         size_t auth_len)
{
 u8 auth_data[IKEV2_MAX_HASH_LEN];
 const struct ikev2_prf_alg *prf;

 if (method != AUTH_SHARED_KEY_MIC) {
  wpa_printf(MSG_INFO, "IKEV2: Unsupported authentication "
      "method %d", method);
  return -1;
 }


 if (ikev2_derive_auth_data(data->proposal.prf, data->i_sign_msg,
       data->IDi, data->IDi_len, data->IDi_type,
       &data->keys, 1, data->shared_secret,
       data->shared_secret_len,
       data->r_nonce, data->r_nonce_len,
       data->key_pad, data->key_pad_len,
       auth_data) < 0) {
  wpa_printf(MSG_INFO, "IKEV2: Could not derive AUTH data");
  return -1;
 }

 wpabuf_free(data->i_sign_msg);
 data->i_sign_msg = ((void*)0);

 prf = ikev2_get_prf(data->proposal.prf);
 if (prf == ((void*)0))
  return -1;

 if (auth_len != prf->hash_len ||
     os_memcmp_const(auth, auth_data, auth_len) != 0) {
  wpa_printf(MSG_INFO, "IKEV2: Invalid Authentication Data");
  wpa_hexdump(MSG_DEBUG, "IKEV2: Received Authentication Data",
       auth, auth_len);
  wpa_hexdump(MSG_DEBUG, "IKEV2: Expected Authentication Data",
       auth_data, prf->hash_len);
  data->error_type = AUTHENTICATION_FAILED;
  data->state = NOTIFY;
  return -1;
 }

 wpa_printf(MSG_DEBUG, "IKEV2: Server authenticated successfully "
     "using shared keys");

 return 0;
}
