
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MBEDTLS_ERR_AES_INVALID_KEY_LENGTH ;
 int aesni_setkey_enc_128 (unsigned char*,unsigned char const*) ;
 int aesni_setkey_enc_192 (unsigned char*,unsigned char const*) ;
 int aesni_setkey_enc_256 (unsigned char*,unsigned char const*) ;

int mbedtls_aesni_setkey_enc( unsigned char *rk,
                      const unsigned char *key,
                      size_t bits )
{
    switch( bits )
    {
        case 128: aesni_setkey_enc_128( rk, key ); break;
        case 192: aesni_setkey_enc_192( rk, key ); break;
        case 256: aesni_setkey_enc_256( rk, key ); break;
        default : return( MBEDTLS_ERR_AES_INVALID_KEY_LENGTH );
    }

    return( 0 );
}
