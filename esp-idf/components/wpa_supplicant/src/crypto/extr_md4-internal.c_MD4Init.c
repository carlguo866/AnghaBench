
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* state; scalar_t__ count; } ;
typedef TYPE_1__ MD4_CTX ;



__attribute__((used)) static void MD4Init(MD4_CTX *ctx)
{
 ctx->count = 0;
 ctx->state[0] = 0x67452301;
 ctx->state[1] = 0xefcdab89;
 ctx->state[2] = 0x98badcfe;
 ctx->state[3] = 0x10325476;
}
