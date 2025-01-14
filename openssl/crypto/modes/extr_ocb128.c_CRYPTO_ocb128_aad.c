
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_11__ {int* c; } ;
struct TYPE_10__ {scalar_t__ blocks_hashed; TYPE_2__ sum; TYPE_2__ offset_aad; } ;
struct TYPE_12__ {TYPE_1__ sess; int keyenc; int (* encrypt ) (int*,int*,int ) ;TYPE_2__ l_star; } ;
typedef TYPE_2__ OCB_BLOCK ;
typedef TYPE_3__ OCB128_CONTEXT ;


 int memcpy (int*,unsigned char const*,size_t) ;
 int memset (int*,int ,int) ;
 int ocb_block16_xor (TYPE_2__*,TYPE_2__*,TYPE_2__*) ;
 TYPE_2__* ocb_lookup_l (TYPE_3__*,int ) ;
 int ocb_ntz (scalar_t__) ;
 int stub1 (int*,int*,int ) ;
 int stub2 (int*,int*,int ) ;

int CRYPTO_ocb128_aad(OCB128_CONTEXT *ctx, const unsigned char *aad,
                      size_t len)
{
    u64 i, all_num_blocks;
    size_t num_blocks, last_len;
    OCB_BLOCK tmp;


    num_blocks = len / 16;
    all_num_blocks = num_blocks + ctx->sess.blocks_hashed;


    for (i = ctx->sess.blocks_hashed + 1; i <= all_num_blocks; i++) {
        OCB_BLOCK *lookup;


        lookup = ocb_lookup_l(ctx, ocb_ntz(i));
        if (lookup == ((void*)0))
            return 0;
        ocb_block16_xor(&ctx->sess.offset_aad, lookup, &ctx->sess.offset_aad);

        memcpy(tmp.c, aad, 16);
        aad += 16;


        ocb_block16_xor(&ctx->sess.offset_aad, &tmp, &tmp);
        ctx->encrypt(tmp.c, tmp.c, ctx->keyenc);
        ocb_block16_xor(&tmp, &ctx->sess.sum, &ctx->sess.sum);
    }





    last_len = len % 16;

    if (last_len > 0) {

        ocb_block16_xor(&ctx->sess.offset_aad, &ctx->l_star,
                        &ctx->sess.offset_aad);


        memset(tmp.c, 0, 16);
        memcpy(tmp.c, aad, last_len);
        tmp.c[last_len] = 0x80;
        ocb_block16_xor(&ctx->sess.offset_aad, &tmp, &tmp);


        ctx->encrypt(tmp.c, tmp.c, ctx->keyenc);
        ocb_block16_xor(&tmp, &ctx->sess.sum, &ctx->sess.sum);
    }

    ctx->sess.blocks_hashed = all_num_blocks;

    return 1;
}
