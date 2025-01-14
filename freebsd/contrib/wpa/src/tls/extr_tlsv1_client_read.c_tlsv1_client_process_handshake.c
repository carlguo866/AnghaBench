
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct tlsv1_client {int state; int verify; } ;



 int FAILED ;
 int MSG_DEBUG ;







 int TLS_ALERT_DECODE_ERROR ;
 int TLS_ALERT_LEVEL_FATAL ;
 scalar_t__ TLS_CONTENT_TYPE_ALERT ;
 scalar_t__ TLS_CONTENT_TYPE_HANDSHAKE ;
 scalar_t__ const TLS_HANDSHAKE_TYPE_HELLO_REQUEST ;
 size_t WPA_GET_BE24 (scalar_t__ const*) ;
 int tls_alert (struct tlsv1_client*,int ,int ) ;
 int tls_process_application_data (struct tlsv1_client*,scalar_t__,scalar_t__ const*,size_t*,scalar_t__**,size_t*) ;
 int tls_process_certificate (struct tlsv1_client*,scalar_t__,scalar_t__ const*,size_t*) ;
 int tls_process_certificate_request (struct tlsv1_client*,scalar_t__,scalar_t__ const*,size_t*) ;
 int tls_process_server_change_cipher_spec (struct tlsv1_client*,scalar_t__,scalar_t__ const*,size_t*) ;
 int tls_process_server_finished (struct tlsv1_client*,scalar_t__,scalar_t__ const*,size_t*) ;
 int tls_process_server_hello (struct tlsv1_client*,scalar_t__,scalar_t__ const*,size_t*) ;
 int tls_process_server_hello_done (struct tlsv1_client*,scalar_t__,scalar_t__ const*,size_t*) ;
 int tls_process_server_key_exchange (struct tlsv1_client*,scalar_t__,scalar_t__ const*,size_t*) ;
 int tls_verify_hash_add (int *,scalar_t__ const*,size_t) ;
 int wpa_printf (int ,char*,...) ;

int tlsv1_client_process_handshake(struct tlsv1_client *conn, u8 ct,
       const u8 *buf, size_t *len,
       u8 **out_data, size_t *out_len)
{
 if (ct == TLS_CONTENT_TYPE_ALERT) {
  if (*len < 2) {
   wpa_printf(MSG_DEBUG, "TLSv1: Alert underflow");
   tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
      TLS_ALERT_DECODE_ERROR);
   return -1;
  }
  wpa_printf(MSG_DEBUG, "TLSv1: Received alert %d:%d",
      buf[0], buf[1]);
  *len = 2;
  conn->state = FAILED;
  return -1;
 }

 if (ct == TLS_CONTENT_TYPE_HANDSHAKE && *len >= 4 &&
     buf[0] == TLS_HANDSHAKE_TYPE_HELLO_REQUEST) {
  size_t hr_len = WPA_GET_BE24(buf + 1);
  if (hr_len > *len - 4) {
   wpa_printf(MSG_DEBUG, "TLSv1: HelloRequest underflow");
   tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
      TLS_ALERT_DECODE_ERROR);
   return -1;
  }
  wpa_printf(MSG_DEBUG, "TLSv1: Ignored HelloRequest");
  *len = 4 + hr_len;
  return 0;
 }

 switch (conn->state) {
 case 130:
  if (tls_process_server_hello(conn, ct, buf, len))
   return -1;
  break;
 case 134:
  if (tls_process_certificate(conn, ct, buf, len))
   return -1;
  break;
 case 128:
  if (tls_process_server_key_exchange(conn, ct, buf, len))
   return -1;
  break;
 case 133:
  if (tls_process_certificate_request(conn, ct, buf, len))
   return -1;
  break;
 case 129:
  if (tls_process_server_hello_done(conn, ct, buf, len))
   return -1;
  break;
 case 132:
  if (tls_process_server_change_cipher_spec(conn, ct, buf, len))
   return -1;
  break;
 case 131:
  if (tls_process_server_finished(conn, ct, buf, len))
   return -1;
  break;
 case 135:
  if (out_data &&
      tls_process_application_data(conn, ct, buf, len, out_data,
       out_len))
   return -1;
  break;
 default:
  wpa_printf(MSG_DEBUG, "TLSv1: Unexpected state %d "
      "while processing received message",
      conn->state);
  return -1;
 }

 if (ct == TLS_CONTENT_TYPE_HANDSHAKE)
  tls_verify_hash_add(&conn->verify, buf, *len);

 return 0;
}
