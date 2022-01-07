
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int CCOPY (int ,int*,int*,size_t) ;
 int EQ (size_t,int) ;
 int NEQ (int,int ) ;
 int br_i15_from_monty (int*,int const*,int) ;
 int br_i15_montymul (int*,int*,int*,int const*,int) ;
 int br_i15_muladd_small (int*,int ,int const*) ;
 int br_i15_to_monty (int*,int const*) ;
 int br_i15_zero (int*,int const) ;
 int memcpy (int*,int*,size_t) ;

uint32_t
br_i15_modpow_opt(uint16_t *x,
 const unsigned char *e, size_t elen,
 const uint16_t *m, uint16_t m0i, uint16_t *tmp, size_t twlen)
{
 size_t mlen, mwlen;
 uint16_t *t1, *t2, *base;
 size_t u, v;
 uint32_t acc;
 int acc_len, win_len;




 mwlen = (m[0] + 31) >> 4;
 mlen = mwlen * sizeof m[0];
 mwlen += (mwlen & 1);
 t1 = tmp;
 t2 = tmp + mwlen;







 if (twlen < (mwlen << 1)) {
  return 0;
 }
 for (win_len = 5; win_len > 1; win_len --) {
  if ((((uint32_t)1 << win_len) + 1) * mwlen <= twlen) {
   break;
  }
 }




 br_i15_to_monty(x, m);






 if (win_len == 1) {
  memcpy(t2, x, mlen);
 } else {
  memcpy(t2 + mwlen, x, mlen);
  base = t2 + mwlen;
  for (u = 2; u < ((unsigned)1 << win_len); u ++) {
   br_i15_montymul(base + mwlen, base, x, m, m0i);
   base += mwlen;
  }
 }






 br_i15_zero(x, m[0]);
 x[(m[0] + 15) >> 4] = 1;
 br_i15_muladd_small(x, 0, m);





 acc = 0;
 acc_len = 0;
 while (acc_len > 0 || elen > 0) {
  int i, k;
  uint32_t bits;




  k = win_len;
  if (acc_len < win_len) {
   if (elen > 0) {
    acc = (acc << 8) | *e ++;
    elen --;
    acc_len += 8;
   } else {
    k = acc_len;
   }
  }
  bits = (acc >> (acc_len - k)) & (((uint32_t)1 << k) - 1);
  acc_len -= k;




  for (i = 0; i < k; i ++) {
   br_i15_montymul(t1, x, x, m, m0i);
   memcpy(x, t1, mlen);
  }







  if (win_len > 1) {
   br_i15_zero(t2, m[0]);
   base = t2 + mwlen;
   for (u = 1; u < ((uint32_t)1 << k); u ++) {
    uint32_t mask;

    mask = -EQ(u, bits);
    for (v = 1; v < mwlen; v ++) {
     t2[v] |= mask & base[v];
    }
    base += mwlen;
   }
  }





  br_i15_montymul(t1, x, t2, m, m0i);
  CCOPY(NEQ(bits, 0), x, t1, mlen);
 }




 br_i15_from_monty(x, m, m0i);
 return 1;
}
