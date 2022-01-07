
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int EQ (int,int) ;
 int GT (int,int) ;
 int LT (int,int) ;
 int MUL (int,int) ;
 int MUX (int ,int,int) ;
 int br_div (int,int,int) ;
 int br_i32_add (int*,int const*,int) ;
 int br_i32_sub (int*,int const*,int) ;
 int br_i32_word (int const*,int) ;
 int br_rem (int,int,int const) ;
 int memmove (int*,int*,size_t) ;

void
br_i32_muladd_small(uint32_t *x, uint32_t z, const uint32_t *m)
{
 uint32_t m_bitlen;
 size_t u, mlen;
 uint32_t a0, a1, b0, hi, g, q, tb;
 uint32_t chf, clow, under, over;
 uint64_t cc;





 m_bitlen = m[0];
 if (m_bitlen == 0) {
  return;
 }
 if (m_bitlen <= 32) {
  x[1] = br_rem(x[1], z, m[1]);
  return;
 }
 mlen = (m_bitlen + 31) >> 5;
 a0 = br_i32_word(x, m_bitlen - 32);
 hi = x[mlen];
 memmove(x + 2, x + 1, (mlen - 1) * sizeof *x);
 x[1] = z;
 a1 = br_i32_word(x, m_bitlen - 32);
 b0 = br_i32_word(m, m_bitlen - 32);
 g = br_div(a0, a1, b0);
 q = MUX(EQ(a0, b0), 0xFFFFFFFF, MUX(EQ(g, 0), 0, g - 1));
 cc = 0;
 tb = 1;
 for (u = 1; u <= mlen; u ++) {
  uint32_t mw, zw, xw, nxw;
  uint64_t zl;

  mw = m[u];
  zl = MUL(mw, q) + cc;
  cc = (uint32_t)(zl >> 32);
  zw = (uint32_t)zl;
  xw = x[u];
  nxw = xw - zw;
  cc += (uint64_t)GT(nxw, xw);
  x[u] = nxw;
  tb = MUX(EQ(nxw, mw), tb, GT(nxw, mw));
 }
 chf = (uint32_t)(cc >> 32);
 clow = (uint32_t)cc;
 over = chf | GT(clow, hi);
 under = ~over & (tb | (~chf & LT(clow, hi)));
 br_i32_add(x, m, over);
 br_i32_sub(x, m, under);
}
