
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int mrb_sym ;


 char* pack_table ;

__attribute__((used)) static const char*
sym_inline_unpack_with_bit(mrb_sym sym, char *buf, int bit_per_char)
{
  int i;

  for (i=0; i<30/bit_per_char; i++) {
    uint32_t bits;
    char c;

    bits = sym>>(i*bit_per_char+2) & (1<<bit_per_char)-1;
    if (bits == 0) break;
    c = pack_table[bits-1];
    buf[i] = c;
  }
  buf[i] = '\0';
  return buf;
}
