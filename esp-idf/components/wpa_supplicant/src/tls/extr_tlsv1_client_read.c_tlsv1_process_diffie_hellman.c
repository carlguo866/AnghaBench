
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tlsv1_client {scalar_t__ dh_p_len; int* dh_p; int dh_g_len; int* dh_g; scalar_t__ dh_ys_len; int* dh_ys; } ;


 int MSG_DEBUG ;
 void* WPA_GET_BE16 (int const*) ;
 void* os_malloc (int) ;
 int os_memcpy (int*,int const*,int) ;
 int tlsv1_client_free_dh (struct tlsv1_client*) ;
 int wpa_hexdump (int ,char*,int*,int) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int tlsv1_process_diffie_hellman(struct tlsv1_client *conn,
     const u8 *buf, size_t len)
{
 const u8 *pos, *end;

 tlsv1_client_free_dh(conn);

 pos = buf;
 end = buf + len;

 if (end - pos < 3)
  goto fail;
 conn->dh_p_len = WPA_GET_BE16(pos);
 pos += 2;
 if (conn->dh_p_len == 0 || end - pos < (int) conn->dh_p_len) {
  wpa_printf(MSG_DEBUG, "TLSv1: Invalid dh_p length %lu",
      (unsigned long) conn->dh_p_len);
  goto fail;
 }
 conn->dh_p = os_malloc(conn->dh_p_len);
 if (conn->dh_p == ((void*)0))
  goto fail;
 os_memcpy(conn->dh_p, pos, conn->dh_p_len);
 pos += conn->dh_p_len;
 wpa_hexdump(MSG_DEBUG, "TLSv1: DH p (prime)",
      conn->dh_p, conn->dh_p_len);

 if (end - pos < 3)
  goto fail;
 conn->dh_g_len = WPA_GET_BE16(pos);
 pos += 2;
 if (conn->dh_g_len == 0 || end - pos < (int) conn->dh_g_len)
  goto fail;
 conn->dh_g = os_malloc(conn->dh_g_len);
 if (conn->dh_g == ((void*)0))
  goto fail;
 os_memcpy(conn->dh_g, pos, conn->dh_g_len);
 pos += conn->dh_g_len;
 wpa_hexdump(MSG_DEBUG, "TLSv1: DH g (generator)",
      conn->dh_g, conn->dh_g_len);
 if (conn->dh_g_len == 1 && conn->dh_g[0] < 2)
  goto fail;

 if (end - pos < 3)
  goto fail;
 conn->dh_ys_len = WPA_GET_BE16(pos);
 pos += 2;
 if (conn->dh_ys_len == 0 || end - pos < (int) conn->dh_ys_len)
  goto fail;
 conn->dh_ys = os_malloc(conn->dh_ys_len);
 if (conn->dh_ys == ((void*)0))
  goto fail;
 os_memcpy(conn->dh_ys, pos, conn->dh_ys_len);
 pos += conn->dh_ys_len;
 wpa_hexdump(MSG_DEBUG, "TLSv1: DH Ys (server's public value)",
      conn->dh_ys, conn->dh_ys_len);

 return 0;

fail:
 wpa_printf(MSG_DEBUG, "TLSv1: Processing DH params failed");
 tlsv1_client_free_dh(conn);
 return -1;
}
