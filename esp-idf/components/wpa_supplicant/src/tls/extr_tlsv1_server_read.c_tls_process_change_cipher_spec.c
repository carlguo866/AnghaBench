
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct tlsv1_server {int state; int rl; } ;


 int CLIENT_FINISHED ;
 int MSG_DEBUG ;
 int TLS_ALERT_DECODE_ERROR ;
 int TLS_ALERT_INTERNAL_ERROR ;
 int TLS_ALERT_LEVEL_FATAL ;
 int TLS_ALERT_UNEXPECTED_MESSAGE ;
 scalar_t__ const TLS_CHANGE_CIPHER_SPEC ;
 scalar_t__ TLS_CONTENT_TYPE_CHANGE_CIPHER_SPEC ;
 scalar_t__ tlsv1_record_change_read_cipher (int *) ;
 int tlsv1_server_alert (struct tlsv1_server*,int ,int ) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int tls_process_change_cipher_spec(struct tlsv1_server *conn,
       u8 ct, const u8 *in_data,
       size_t *in_len)
{
 const u8 *pos;
 size_t left;

 if (ct != TLS_CONTENT_TYPE_CHANGE_CIPHER_SPEC) {
  wpa_printf(MSG_DEBUG, "TLSv1: Expected ChangeCipherSpec; "
      "received content type 0x%x", ct);
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_UNEXPECTED_MESSAGE);
  return -1;
 }

 pos = in_data;
 left = *in_len;

 if (left < 1) {
  wpa_printf(MSG_DEBUG, "TLSv1: Too short ChangeCipherSpec");
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_DECODE_ERROR);
  return -1;
 }

 if (*pos != TLS_CHANGE_CIPHER_SPEC) {
  wpa_printf(MSG_DEBUG, "TLSv1: Expected ChangeCipherSpec; "
      "received data 0x%x", *pos);
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_UNEXPECTED_MESSAGE);
  return -1;
 }

 wpa_printf(MSG_DEBUG, "TLSv1: Received ChangeCipherSpec");
 if (tlsv1_record_change_read_cipher(&conn->rl) < 0) {
  wpa_printf(MSG_DEBUG, "TLSv1: Failed to change read cipher "
      "for record layer");
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_INTERNAL_ERROR);
  return -1;
 }

 *in_len = pos + 1 - in_data;

 conn->state = CLIENT_FINISHED;

 return 0;
}
