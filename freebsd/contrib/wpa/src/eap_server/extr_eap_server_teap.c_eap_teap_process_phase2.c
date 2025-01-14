
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct TYPE_2__ {int conn; } ;
struct eap_teap_data {struct wpabuf* pending_phase2_resp; TYPE_1__ ssl; } ;
struct eap_sm {scalar_t__ method_pending; int ssl_ctx; } ;


 int FAILURE ;
 scalar_t__ METHOD_PENDING_WAIT ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int eap_teap_process_phase2_tlvs (struct eap_sm*,struct eap_teap_data*,struct wpabuf*) ;
 int eap_teap_state (struct eap_teap_data*,int ) ;
 struct wpabuf* tls_connection_decrypt (int ,int ,struct wpabuf*) ;
 int wpa_hexdump_buf_key (int ,char*,struct wpabuf*) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_free (struct wpabuf*) ;
 scalar_t__ wpabuf_len (struct wpabuf*) ;

__attribute__((used)) static void eap_teap_process_phase2(struct eap_sm *sm,
        struct eap_teap_data *data,
        struct wpabuf *in_buf)
{
 struct wpabuf *in_decrypted;

 wpa_printf(MSG_DEBUG,
     "EAP-TEAP: Received %lu bytes encrypted data for Phase 2",
     (unsigned long) wpabuf_len(in_buf));

 if (data->pending_phase2_resp) {
  wpa_printf(MSG_DEBUG,
      "EAP-TEAP: Pending Phase 2 response - skip decryption and use old data");
  eap_teap_process_phase2_tlvs(sm, data,
          data->pending_phase2_resp);
  wpabuf_free(data->pending_phase2_resp);
  data->pending_phase2_resp = ((void*)0);
  return;
 }

 in_decrypted = tls_connection_decrypt(sm->ssl_ctx, data->ssl.conn,
           in_buf);
 if (!in_decrypted) {
  wpa_printf(MSG_INFO,
      "EAP-TEAP: Failed to decrypt Phase 2 data");
  eap_teap_state(data, FAILURE);
  return;
 }

 wpa_hexdump_buf_key(MSG_DEBUG, "EAP-TEAP: Decrypted Phase 2 TLVs",
       in_decrypted);

 eap_teap_process_phase2_tlvs(sm, data, in_decrypted);

 if (sm->method_pending == METHOD_PENDING_WAIT) {
  wpa_printf(MSG_DEBUG,
      "EAP-TEAP: Phase 2 method is in pending wait state - save decrypted response");
  wpabuf_free(data->pending_phase2_resp);
  data->pending_phase2_resp = in_decrypted;
  return;
 }

 wpabuf_free(in_decrypted);
}
