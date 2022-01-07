
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int br_enc32be (unsigned char*,int) ;
 int memset (void*,int ,size_t) ;

void
br_i31_encode(void *dst, size_t len, const uint32_t *x)
{
 unsigned char *buf;
 size_t k, xlen;
 uint32_t acc;
 int acc_len;

 xlen = (x[0] + 31) >> 5;
 if (xlen == 0) {
  memset(dst, 0, len);
  return;
 }
 buf = (unsigned char *)dst + len;
 k = 1;
 acc = 0;
 acc_len = 0;
 while (len != 0) {
  uint32_t w;

  w = (k <= xlen) ? x[k] : 0;
  k ++;
  if (acc_len == 0) {
   acc = w;
   acc_len = 31;
  } else {
   uint32_t z;

   z = acc | (w << acc_len);
   acc_len --;
   acc = w >> (31 - acc_len);
   if (len >= 4) {
    buf -= 4;
    len -= 4;
    br_enc32be(buf, z);
   } else {
    switch (len) {
    case 3:
     buf[-3] = (unsigned char)(z >> 16);

    case 2:
     buf[-2] = (unsigned char)(z >> 8);

    case 1:
     buf[-1] = (unsigned char)z;
     break;
    }
    return;
   }
  }
 }
}
