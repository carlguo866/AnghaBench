
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_xtea_context ;


 int MBEDTLS_ERR_XTEA_INVALID_INPUT_LENGTH ;
 int MBEDTLS_XTEA_DECRYPT ;
 int mbedtls_xtea_crypt_ecb (int *,int,unsigned char const*,unsigned char*) ;
 int memcpy (unsigned char*,unsigned char const*,int) ;

int mbedtls_xtea_crypt_cbc( mbedtls_xtea_context *ctx, int mode, size_t length,
                    unsigned char iv[8], const unsigned char *input,
                    unsigned char *output)
{
    int i;
    unsigned char temp[8];

    if( length % 8 )
        return( MBEDTLS_ERR_XTEA_INVALID_INPUT_LENGTH );

    if( mode == MBEDTLS_XTEA_DECRYPT )
    {
        while( length > 0 )
        {
            memcpy( temp, input, 8 );
            mbedtls_xtea_crypt_ecb( ctx, mode, input, output );

            for( i = 0; i < 8; i++ )
                output[i] = (unsigned char)( output[i] ^ iv[i] );

            memcpy( iv, temp, 8 );

            input += 8;
            output += 8;
            length -= 8;
        }
    }
    else
    {
        while( length > 0 )
        {
            for( i = 0; i < 8; i++ )
                output[i] = (unsigned char)( input[i] ^ iv[i] );

            mbedtls_xtea_crypt_ecb( ctx, mode, output, output );
            memcpy( iv, output, 8 );

            input += 8;
            output += 8;
            length -= 8;
        }
    }

    return( 0 );
}
