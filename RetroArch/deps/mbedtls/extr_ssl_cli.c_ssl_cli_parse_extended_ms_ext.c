
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ minor_ver; TYPE_2__* handshake; TYPE_1__* conf; } ;
typedef TYPE_3__ mbedtls_ssl_context ;
struct TYPE_7__ {int extended_ms; } ;
struct TYPE_6__ {scalar_t__ extended_ms; } ;


 int MBEDTLS_ERR_SSL_BAD_HS_SERVER_HELLO ;
 int MBEDTLS_SSL_ALERT_LEVEL_FATAL ;
 int MBEDTLS_SSL_ALERT_MSG_HANDSHAKE_FAILURE ;
 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 scalar_t__ MBEDTLS_SSL_EXTENDED_MS_DISABLED ;
 int MBEDTLS_SSL_EXTENDED_MS_ENABLED ;
 scalar_t__ MBEDTLS_SSL_MINOR_VERSION_0 ;
 int mbedtls_ssl_send_alert_message (TYPE_3__*,int ,int ) ;

__attribute__((used)) static int ssl_cli_parse_extended_ms_ext( mbedtls_ssl_context *ssl,
                                         const unsigned char *buf,
                                         size_t len )
{
    if( ssl->conf->extended_ms == MBEDTLS_SSL_EXTENDED_MS_DISABLED ||
        ssl->minor_ver == MBEDTLS_SSL_MINOR_VERSION_0 ||
        len != 0 )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "non-matching extended master secret extension" ) );
        mbedtls_ssl_send_alert_message( ssl, MBEDTLS_SSL_ALERT_LEVEL_FATAL,
                                        MBEDTLS_SSL_ALERT_MSG_HANDSHAKE_FAILURE );
        return( MBEDTLS_ERR_SSL_BAD_HS_SERVER_HELLO );
    }

    ((void) buf);

    ssl->handshake->extended_ms = MBEDTLS_SSL_EXTENDED_MS_ENABLED;

    return( 0 );
}
