
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {TYPE_2__* handshake; TYPE_1__* conf; } ;
typedef TYPE_3__ mbedtls_ssl_context ;
struct TYPE_6__ {int retransmit_timeout; } ;
struct TYPE_5__ {int hs_timeout_max; } ;


 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;

__attribute__((used)) static int ssl_double_retransmit_timeout( mbedtls_ssl_context *ssl )
{
    uint32_t new_timeout;

    if( ssl->handshake->retransmit_timeout >= ssl->conf->hs_timeout_max )
        return( -1 );

    new_timeout = 2 * ssl->handshake->retransmit_timeout;


    if( new_timeout < ssl->handshake->retransmit_timeout ||
        new_timeout > ssl->conf->hs_timeout_max )
    {
        new_timeout = ssl->conf->hs_timeout_max;
    }

    ssl->handshake->retransmit_timeout = new_timeout;
    MBEDTLS_SSL_DEBUG_MSG( 3, ( "update timeout value to %d millisecs",
                        ssl->handshake->retransmit_timeout ) );

    return( 0 );
}
