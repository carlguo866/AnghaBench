
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct TYPE_2__ {int tls_version; } ;
struct tlsv1_server {int client_version; scalar_t__ const* client_random; size_t num_cipher_suites; int* cipher_suites; int cipher_suite; scalar_t__ const* session_ticket; int session_ticket_len; int state; TYPE_1__ rl; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int MSG_MSGDUMP ;
 int SERVER_HELLO ;
 int TLS_ALERT_DECODE_ERROR ;
 int TLS_ALERT_ILLEGAL_PARAMETER ;
 int TLS_ALERT_INTERNAL_ERROR ;
 int TLS_ALERT_LEVEL_FATAL ;
 int TLS_ALERT_PROTOCOL_VERSION ;
 int TLS_ALERT_UNEXPECTED_MESSAGE ;
 int TLS_COMPRESSION_NULL ;
 scalar_t__ TLS_CONTENT_TYPE_HANDSHAKE ;
 int TLS_EXT_SESSION_TICKET ;
 scalar_t__ const TLS_HANDSHAKE_TYPE_CLIENT_HELLO ;
 int TLS_RANDOM_LEN ;
 scalar_t__ const TLS_SESSION_ID_MAX_LEN ;
 int TLS_VERSION ;
 int TLS_VERSION_1 ;
 int TLS_VERSION_1_1 ;
 int TLS_VERSION_1_2 ;
 void* WPA_GET_BE16 (scalar_t__ const*) ;
 size_t WPA_GET_BE24 (scalar_t__ const*) ;
 int os_free (scalar_t__ const*) ;
 scalar_t__ const* os_malloc (int) ;
 int os_memcpy (scalar_t__ const*,scalar_t__ const*,int) ;
 int tls_version_str (int) ;
 scalar_t__ tlsv1_record_set_cipher_suite (TYPE_1__*,int) ;
 int tlsv1_server_alert (struct tlsv1_server*,int ,int ) ;
 int wpa_hexdump (int ,char*,scalar_t__ const*,scalar_t__ const) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int tls_process_client_hello(struct tlsv1_server *conn, u8 ct,
        const u8 *in_data, size_t *in_len)
{
 const u8 *pos, *end, *c;
 size_t left, len, i, j;
 u16 cipher_suite;
 u16 num_suites;
 int compr_null_found;
 u16 ext_type, ext_len;

 if (ct != TLS_CONTENT_TYPE_HANDSHAKE) {
  wpa_printf(MSG_DEBUG, "TLSv1: Expected Handshake; "
      "received content type 0x%x", ct);
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_UNEXPECTED_MESSAGE);
  return -1;
 }

 pos = in_data;
 left = *in_len;

 if (left < 4)
  goto decode_error;


 if (*pos != TLS_HANDSHAKE_TYPE_CLIENT_HELLO) {
  wpa_printf(MSG_DEBUG, "TLSv1: Received unexpected handshake "
      "message %d (expected ClientHello)", *pos);
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_UNEXPECTED_MESSAGE);
  return -1;
 }
 wpa_printf(MSG_DEBUG, "TLSv1: Received ClientHello");
 pos++;

 len = WPA_GET_BE24(pos);
 pos += 3;
 left -= 4;

 if (len > left)
  goto decode_error;



 wpa_hexdump(MSG_MSGDUMP, "TLSv1: ClientHello", pos, len);
 end = pos + len;


 if (end - pos < 2)
  goto decode_error;
 conn->client_version = WPA_GET_BE16(pos);
 wpa_printf(MSG_DEBUG, "TLSv1: Client version %d.%d",
     conn->client_version >> 8, conn->client_version & 0xff);
 if (conn->client_version < TLS_VERSION_1) {
  wpa_printf(MSG_DEBUG, "TLSv1: Unexpected protocol version in "
      "ClientHello %u.%u",
      conn->client_version >> 8,
      conn->client_version & 0xff);
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_PROTOCOL_VERSION);
  return -1;
 }
 pos += 2;

 if (TLS_VERSION == TLS_VERSION_1)
  conn->rl.tls_version = TLS_VERSION_1;




 else if (conn->client_version > TLS_VERSION_1_1)
  conn->rl.tls_version = TLS_VERSION_1_1;
 else
  conn->rl.tls_version = conn->client_version;
 wpa_printf(MSG_DEBUG, "TLSv1: Using TLS v%s",
     tls_version_str(conn->rl.tls_version));


 if (end - pos < TLS_RANDOM_LEN)
  goto decode_error;

 os_memcpy(conn->client_random, pos, TLS_RANDOM_LEN);
 pos += TLS_RANDOM_LEN;
 wpa_hexdump(MSG_MSGDUMP, "TLSv1: client_random",
      conn->client_random, TLS_RANDOM_LEN);


 if (end - pos < 1)
  goto decode_error;
 if (end - pos < 1 + *pos || *pos > TLS_SESSION_ID_MAX_LEN)
  goto decode_error;
 wpa_hexdump(MSG_MSGDUMP, "TLSv1: client session_id", pos + 1, *pos);
 pos += 1 + *pos;



 if (end - pos < 2)
  goto decode_error;
 num_suites = WPA_GET_BE16(pos);
 pos += 2;
 if (end - pos < num_suites)
  goto decode_error;
 wpa_hexdump(MSG_MSGDUMP, "TLSv1: client cipher suites",
      pos, num_suites);
 if (num_suites & 1)
  goto decode_error;
 num_suites /= 2;

 cipher_suite = 0;
 for (i = 0; !cipher_suite && i < conn->num_cipher_suites; i++) {
  c = pos;
  for (j = 0; j < num_suites; j++) {
   u16 tmp = WPA_GET_BE16(c);
   c += 2;
   if (!cipher_suite && tmp == conn->cipher_suites[i]) {
    cipher_suite = tmp;
    break;
   }
  }
 }
 pos += num_suites * 2;
 if (!cipher_suite) {
  wpa_printf(MSG_INFO, "TLSv1: No supported cipher suite "
      "available");
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_ILLEGAL_PARAMETER);
  return -1;
 }

 if (tlsv1_record_set_cipher_suite(&conn->rl, cipher_suite) < 0) {
  wpa_printf(MSG_DEBUG, "TLSv1: Failed to set CipherSuite for "
      "record layer");
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_INTERNAL_ERROR);
  return -1;
 }

 conn->cipher_suite = cipher_suite;


 if (end - pos < 1)
  goto decode_error;
 num_suites = *pos++;
 if (end - pos < num_suites)
  goto decode_error;
 wpa_hexdump(MSG_MSGDUMP, "TLSv1: client compression_methods",
      pos, num_suites);
 compr_null_found = 0;
 for (i = 0; i < num_suites; i++) {
  if (*pos++ == TLS_COMPRESSION_NULL)
   compr_null_found = 1;
 }
 if (!compr_null_found) {
  wpa_printf(MSG_INFO, "TLSv1: Client does not accept NULL "
      "compression");
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_ILLEGAL_PARAMETER);
  return -1;
 }

 if (end - pos == 1) {
  wpa_printf(MSG_DEBUG, "TLSv1: Unexpected extra octet in the "
       "end of ClientHello: 0x%02x", *pos);
  goto decode_error;
 }

 if (end - pos >= 2) {

  ext_len = WPA_GET_BE16(pos);
  pos += 2;

  wpa_printf(MSG_DEBUG, "TLSv1: %u bytes of ClientHello "
      "extensions", ext_len);
  if (end - pos != ext_len) {
   wpa_printf(MSG_DEBUG, "TLSv1: Invalid ClientHello "
       "extension list length %u (expected %u)",
       ext_len, (unsigned int) (end - pos));
   goto decode_error;
  }
  while (pos < end) {
   if (end - pos < 2) {
    wpa_printf(MSG_DEBUG, "TLSv1: Invalid "
        "extension_type field");
    goto decode_error;
   }

   ext_type = WPA_GET_BE16(pos);
   pos += 2;

   if (end - pos < 2) {
    wpa_printf(MSG_DEBUG, "TLSv1: Invalid "
        "extension_data length field");
    goto decode_error;
   }

   ext_len = WPA_GET_BE16(pos);
   pos += 2;

   if (end - pos < ext_len) {
    wpa_printf(MSG_DEBUG, "TLSv1: Invalid "
        "extension_data field");
    goto decode_error;
   }

   wpa_printf(MSG_DEBUG, "TLSv1: ClientHello Extension "
       "type %u", ext_type);
   wpa_hexdump(MSG_MSGDUMP, "TLSv1: ClientHello "
        "Extension data", pos, ext_len);

   if (ext_type == TLS_EXT_SESSION_TICKET) {
    os_free(conn->session_ticket);
    conn->session_ticket = os_malloc(ext_len);
    if (conn->session_ticket) {
     os_memcpy(conn->session_ticket, pos,
        ext_len);
     conn->session_ticket_len = ext_len;
    }
   }

   pos += ext_len;
  }
 }

 *in_len = end - in_data;

 wpa_printf(MSG_DEBUG, "TLSv1: ClientHello OK - proceed to "
     "ServerHello");
 conn->state = SERVER_HELLO;

 return 0;

decode_error:
 wpa_printf(MSG_DEBUG, "TLSv1: Failed to decode ClientHello");
 tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
      TLS_ALERT_DECODE_ERROR);
 return -1;
}
