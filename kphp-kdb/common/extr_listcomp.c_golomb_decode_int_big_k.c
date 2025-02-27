
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitreader {int m; } ;
struct list_decoder {int last; int k; int p; scalar_t__ M; struct bitreader br; } ;


 scalar_t__ decode_cur_bit ;
 int decode_load_bit () ;

__attribute__((used)) static int golomb_decode_int_big_k (struct list_decoder *dec) {
  struct bitreader *br = &dec->br;
  register int m = br->m;
  int d = 0, a = dec->last;
  while (decode_cur_bit) {
    a += dec->M;
    decode_load_bit();
  }
  decode_load_bit();
  int i = dec->k;
  do {
    d <<= 1;
    if (decode_cur_bit) {
      d++;
    }
    decode_load_bit();
  } while (--i > 1);
  if (d >= dec->p) {
    d <<= 1;
    if (decode_cur_bit) {
      d++;
    }
    decode_load_bit();
    d -= dec->p;
  }
  br->m = m;
  return dec->last = a + d + 1;
}
