
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_blowfish_context ;


 int MBEDTLS_BLOWFISH_BLOCKSIZE ;
 int MBEDTLS_BLOWFISH_DECRYPT ;
 int MBEDTLS_ERR_BLOWFISH_INVALID_INPUT_LENGTH ;
 int mbedtls_blowfish_crypt_ecb (int *,int,unsigned char const*,unsigned char*) ;
 int memcpy (unsigned char*,unsigned char const*,int) ;

int mbedtls_blowfish_crypt_cbc( mbedtls_blowfish_context *ctx,
                    int mode,
                    size_t length,
                    unsigned char iv[MBEDTLS_BLOWFISH_BLOCKSIZE],
                    const unsigned char *input,
                    unsigned char *output )
{
    int i;
    unsigned char temp[MBEDTLS_BLOWFISH_BLOCKSIZE];

    if( length % MBEDTLS_BLOWFISH_BLOCKSIZE )
        return( MBEDTLS_ERR_BLOWFISH_INVALID_INPUT_LENGTH );

    if( mode == MBEDTLS_BLOWFISH_DECRYPT )
    {
        while( length > 0 )
        {
            memcpy( temp, input, MBEDTLS_BLOWFISH_BLOCKSIZE );
            mbedtls_blowfish_crypt_ecb( ctx, mode, input, output );

            for( i = 0; i < MBEDTLS_BLOWFISH_BLOCKSIZE;i++ )
                output[i] = (unsigned char)( output[i] ^ iv[i] );

            memcpy( iv, temp, MBEDTLS_BLOWFISH_BLOCKSIZE );

            input += MBEDTLS_BLOWFISH_BLOCKSIZE;
            output += MBEDTLS_BLOWFISH_BLOCKSIZE;
            length -= MBEDTLS_BLOWFISH_BLOCKSIZE;
        }
    }
    else
    {
        while( length > 0 )
        {
            for( i = 0; i < MBEDTLS_BLOWFISH_BLOCKSIZE; i++ )
                output[i] = (unsigned char)( input[i] ^ iv[i] );

            mbedtls_blowfish_crypt_ecb( ctx, mode, output, output );
            memcpy( iv, output, MBEDTLS_BLOWFISH_BLOCKSIZE );

            input += MBEDTLS_BLOWFISH_BLOCKSIZE;
            output += MBEDTLS_BLOWFISH_BLOCKSIZE;
            length -= MBEDTLS_BLOWFISH_BLOCKSIZE;
        }
    }

    return( 0 );
}
