
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_camellia_context ;


 int mbedtls_camellia_free (int *) ;
 int mbedtls_free (void*) ;

__attribute__((used)) static void camellia_ctx_free( void *ctx )
{
    mbedtls_camellia_free( (mbedtls_camellia_context *) ctx );
    mbedtls_free( ctx );
}
