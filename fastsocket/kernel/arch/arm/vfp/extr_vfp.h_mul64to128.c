
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;



__attribute__((used)) static inline void mul64to128(u64 *resh, u64 *resl, u64 n, u64 m)
{
 u32 nh, nl, mh, ml;
 u64 rh, rma, rmb, rl;

 nl = n;
 ml = m;
 rl = (u64)nl * ml;

 nh = n >> 32;
 rma = (u64)nh * ml;

 mh = m >> 32;
 rmb = (u64)nl * mh;
 rma += rmb;

 rh = (u64)nh * mh;
 rh += ((u64)(rma < rmb) << 32) + (rma >> 32);

 rma <<= 32;
 rl += rma;
 rh += (rl < rma);

 *resl = rl;
 *resh = rh;
}
