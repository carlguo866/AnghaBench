
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int BIT (int) ;

__attribute__((used)) static void nand_bit_wise_majority(const void **srcbufs,
       unsigned int nsrcbufs,
       void *dstbuf,
       unsigned int bufsize)
{
 int i, j, k;

 for (i = 0; i < bufsize; i++) {
  u8 val = 0;

  for (j = 0; j < 8; j++) {
   unsigned int cnt = 0;

   for (k = 0; k < nsrcbufs; k++) {
    const u8 *srcbuf = srcbufs[k];

    if (srcbuf[i] & BIT(j))
     cnt++;
   }

   if (cnt > nsrcbufs / 2)
    val |= BIT(j);
  }

  ((u8 *)dstbuf)[i] = val;
 }
}
