
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* state; scalar_t__ bitlen; scalar_t__ datalen; } ;
typedef TYPE_1__ SHA256_CTX ;



void sha256_init(SHA256_CTX *ctx)
{
 ctx->datalen = 0;
 ctx->bitlen = 0;
 ctx->state[0] = 0x6a09e667;
 ctx->state[1] = 0xbb67ae85;
 ctx->state[2] = 0x3c6ef372;
 ctx->state[3] = 0xa54ff53a;
 ctx->state[4] = 0x510e527f;
 ctx->state[5] = 0x9b05688c;
 ctx->state[6] = 0x1f83d9ab;
 ctx->state[7] = 0x5be0cd19;
}
