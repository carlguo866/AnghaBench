
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int* s; } ;
typedef TYPE_1__ norx32_ctx ;


 int DEGREE ;
 int ROUNDS ;
 int TAG_BITS ;
 int WORD_BITS ;
 int permute (TYPE_1__*) ;
 void* read32_le (int const*) ;

__attribute__((used)) static void init(norx32_ctx *ctx,
                 const uint8_t key[16],
                 const uint8_t nonce[8])
{

  ctx->s[0] = read32_le(nonce + 0);
  ctx->s[1] = read32_le(nonce + 4);
  ctx->s[2] = 0xb707322f;
  ctx->s[3] = 0xa0c7c90d;

  ctx->s[4] = read32_le(key + 0);
  ctx->s[5] = read32_le(key + 4);
  ctx->s[6] = read32_le(key + 8);
  ctx->s[7] = read32_le(key + 12);

  ctx->s[8] = 0xa3d8d930;
  ctx->s[9] = 0x3fa8b72c;
  ctx->s[10] = 0xed84eb49;
  ctx->s[11] = 0xedca4787;

  ctx->s[12] = 0x335463eb;
  ctx->s[13] = 0xf994220b;
  ctx->s[14] = 0xbe0bf5c9;
  ctx->s[15] = 0xd7c49104;







  ctx->s[12] ^= WORD_BITS;
  ctx->s[13] ^= ROUNDS;
  ctx->s[14] ^= DEGREE;
  ctx->s[15] ^= TAG_BITS;

  permute(ctx);
}
