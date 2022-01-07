
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hash ;


 int MBEDTLS_ERR_RSA_KEY_CHECK_FAILED ;
 int MBEDTLS_MD_NONE ;
 int MBEDTLS_MPI_MAX_SIZE ;
 int memset (unsigned char*,int,int) ;
 scalar_t__ rsa_alt_get_bitlen (void const*) ;
 int rsa_alt_sign_wrap (void*,int ,unsigned char*,int,unsigned char*,size_t*,int *,int *) ;
 scalar_t__ rsa_get_bitlen (void const*) ;
 scalar_t__ rsa_verify_wrap (void*,int ,unsigned char*,int,unsigned char*,size_t) ;

__attribute__((used)) static int rsa_alt_check_pair( const void *pub, const void *prv )
{
    unsigned char sig[MBEDTLS_MPI_MAX_SIZE];
    unsigned char hash[32];
    size_t sig_len = 0;
    int ret;

    if( rsa_alt_get_bitlen( prv ) != rsa_get_bitlen( pub ) )
        return( MBEDTLS_ERR_RSA_KEY_CHECK_FAILED );

    memset( hash, 0x2a, sizeof( hash ) );

    if( ( ret = rsa_alt_sign_wrap( (void *) prv, MBEDTLS_MD_NONE,
                                   hash, sizeof( hash ),
                                   sig, &sig_len, ((void*)0), ((void*)0) ) ) != 0 )
    {
        return( ret );
    }

    if( rsa_verify_wrap( (void *) pub, MBEDTLS_MD_NONE,
                         hash, sizeof( hash ), sig, sig_len ) != 0 )
    {
        return( MBEDTLS_ERR_RSA_KEY_CHECK_FAILED );
    }

    return( 0 );
}
