
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_blowfish_context ;


 int mbedtls_zeroize (int *,int) ;

void mbedtls_blowfish_free( mbedtls_blowfish_context *ctx )
{
    if( ctx == ((void*)0) )
        return;

    mbedtls_zeroize( ctx, sizeof( mbedtls_blowfish_context ) );
}
