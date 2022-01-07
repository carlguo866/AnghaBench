
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int nr; int * rk; } ;
typedef TYPE_1__ mbedtls_camellia_context ;


 int FL (int ,int ,int ,int ) ;
 int FLInv (int ,int ,int ,int ) ;
 int GET_UINT32_BE (int ,unsigned char const*,int) ;
 int PUT_UINT32_BE (int ,unsigned char*,int) ;
 int camellia_feistel (int *,int *,int *) ;

int mbedtls_camellia_crypt_ecb( mbedtls_camellia_context *ctx,
                    int mode,
                    const unsigned char input[16],
                    unsigned char output[16] )
{
    int NR;
    uint32_t *RK, X[4];

    ( (void) mode );

    NR = ctx->nr;
    RK = ctx->rk;

    GET_UINT32_BE( X[0], input, 0 );
    GET_UINT32_BE( X[1], input, 4 );
    GET_UINT32_BE( X[2], input, 8 );
    GET_UINT32_BE( X[3], input, 12 );

    X[0] ^= *RK++;
    X[1] ^= *RK++;
    X[2] ^= *RK++;
    X[3] ^= *RK++;

    while( NR ) {
        --NR;
        camellia_feistel( X, RK, X + 2 );
        RK += 2;
        camellia_feistel( X + 2, RK, X );
        RK += 2;
        camellia_feistel( X, RK, X + 2 );
        RK += 2;
        camellia_feistel( X + 2, RK, X );
        RK += 2;
        camellia_feistel( X, RK, X + 2 );
        RK += 2;
        camellia_feistel( X + 2, RK, X );
        RK += 2;

        if( NR ) {
            FL(X[0], X[1], RK[0], RK[1]);
            RK += 2;
            FLInv(X[2], X[3], RK[0], RK[1]);
            RK += 2;
        }
    }

    X[2] ^= *RK++;
    X[3] ^= *RK++;
    X[0] ^= *RK++;
    X[1] ^= *RK++;

    PUT_UINT32_BE( X[2], output, 0 );
    PUT_UINT32_BE( X[3], output, 4 );
    PUT_UINT32_BE( X[0], output, 8 );
    PUT_UINT32_BE( X[1], output, 12 );

    return( 0 );
}
