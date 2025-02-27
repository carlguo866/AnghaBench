
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_2__ {int state; int rep0; } ;
struct xz_dec_lzma2 {TYPE_1__ lzma; int dict; int rc; } ;


 int dict_get (int *,int ) ;
 int dict_put (int *,int ) ;
 int * lzma_literal_probs (struct xz_dec_lzma2*) ;
 scalar_t__ lzma_state_is_literal (int ) ;
 int lzma_state_literal (int *) ;
 scalar_t__ rc_bit (int *,int *) ;
 int rc_bittree (int *,int *,int) ;

__attribute__((used)) static void lzma_literal(struct xz_dec_lzma2 *s)
{
 uint16_t *probs;
 uint32_t symbol;
 uint32_t match_byte;
 uint32_t match_bit;
 uint32_t offset;
 uint32_t i;

 probs = lzma_literal_probs(s);

 if (lzma_state_is_literal(s->lzma.state)) {
  symbol = rc_bittree(&s->rc, probs, 0x100);
 } else {
  symbol = 1;
  match_byte = dict_get(&s->dict, s->lzma.rep0) << 1;
  offset = 0x100;

  do {
   match_bit = match_byte & offset;
   match_byte <<= 1;
   i = offset + match_bit + symbol;

   if (rc_bit(&s->rc, &probs[i])) {
    symbol = (symbol << 1) + 1;
    offset &= match_bit;
   } else {
    symbol <<= 1;
    offset &= ~match_bit;
   }
  } while (symbol < 0x100);
 }

 dict_put(&s->dict, (uint8_t)symbol);
 lzma_state_literal(&s->lzma.state);
}
