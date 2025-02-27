
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct blocks8 {void** blk; } ;
typedef void* __m128i ;


 size_t AES_BLOCK_LEN ;
 int _mm_loadu_si128 (void* const*) ;
 int _mm_storeu_si128 (void**,void*) ;
 void* aesni_dec (int,void const*,int ) ;
 int aesni_dec8 (int,void const*,void*,void*,void*,void*,void*,void*,void*,void*,void**) ;

void
aesni_decrypt_ecb(int rounds, const void *key_schedule, size_t len,
    const uint8_t from[AES_BLOCK_LEN], uint8_t to[AES_BLOCK_LEN])
{
 __m128i tot;
 __m128i tout[8];
 const struct blocks8 *blks;
 struct blocks8 *top;
 size_t i, cnt;

 cnt = len / AES_BLOCK_LEN / 8;
 for (i = 0; i < cnt; i++) {
  blks = (const struct blocks8 *)from;
  top = (struct blocks8 *)to;
  aesni_dec8(rounds - 1, key_schedule, blks->blk[0], blks->blk[1],
      blks->blk[2], blks->blk[3], blks->blk[4], blks->blk[5],
      blks->blk[6], blks->blk[7], tout);
  top->blk[0] = tout[0];
  top->blk[1] = tout[1];
  top->blk[2] = tout[2];
  top->blk[3] = tout[3];
  top->blk[4] = tout[4];
  top->blk[5] = tout[5];
  top->blk[6] = tout[6];
  top->blk[7] = tout[7];
  from += AES_BLOCK_LEN * 8;
  to += AES_BLOCK_LEN * 8;
 }
 i *= 8;
 cnt = len / AES_BLOCK_LEN;
 for (; i < cnt; i++) {
  tot = aesni_dec(rounds - 1, key_schedule,
      _mm_loadu_si128((const __m128i *)from));
  _mm_storeu_si128((__m128i *)to, tot);
  from += AES_BLOCK_LEN;
  to += AES_BLOCK_LEN;
 }
}
