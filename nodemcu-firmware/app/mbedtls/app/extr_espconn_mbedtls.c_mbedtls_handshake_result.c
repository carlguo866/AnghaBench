
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vrfy_buf ;
typedef TYPE_6__* pmbedtls_msg ;
struct TYPE_17__ {scalar_t__ state; } ;
struct TYPE_12__ {int flag; } ;
struct TYPE_13__ {TYPE_3__ cert_ca_sector; } ;
struct TYPE_10__ {int flag; } ;
struct TYPE_11__ {TYPE_1__ cert_ca_sector; } ;
struct TYPE_16__ {TYPE_4__ server; TYPE_2__ client; } ;
struct TYPE_14__ {int fd; } ;
struct TYPE_15__ {int verify_result; TYPE_8__ ssl; TYPE_5__ listen_fd; } ;


 scalar_t__ MBEDTLS_SSL_HANDSHAKE_OVER ;
 int mbedtls_ssl_get_verify_result (TYPE_8__*) ;
 int mbedtls_x509_crt_verify_info (char*,int,char*,int) ;
 int os_memset (char*,int ,int) ;
 int os_printf (char*,char*) ;
 TYPE_7__ ssl_option ;

__attribute__((used)) static bool mbedtls_handshake_result(const pmbedtls_msg Threadmsg)
{
 if (Threadmsg == ((void*)0))
  return 0;

 if (Threadmsg->ssl.state == MBEDTLS_SSL_HANDSHAKE_OVER) {
  int ret = 0;
  if (Threadmsg->listen_fd.fd == -1)
   ret = ssl_option.client.cert_ca_sector.flag;
  else
   ret = ssl_option.server.cert_ca_sector.flag;

  if (ret == 1){
   ret = mbedtls_ssl_get_verify_result(&Threadmsg->ssl);
   if (ret != 0) {
    char vrfy_buf[512];
    os_memset(vrfy_buf, 0, sizeof(vrfy_buf)-1);
    mbedtls_x509_crt_verify_info(vrfy_buf, sizeof(vrfy_buf), "!", ret);
    os_printf("%s\n", vrfy_buf);
    Threadmsg->verify_result = ret;
    return 0;
   } else
    return 1;
  } else
   return 1;
 }else
  return 0;
}
