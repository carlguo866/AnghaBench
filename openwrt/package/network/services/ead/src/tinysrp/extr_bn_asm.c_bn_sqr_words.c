
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_ULONG ;


 int assert (int) ;
 int sqr64 (int ,int ,int ) ;

void bn_sqr_words(BN_ULONG *r, BN_ULONG *a, int n)
 {
 assert(n >= 0);
 if (n <= 0) return;
 for (;;)
  {
  sqr64(r[0],r[1],a[0]);
  if (--n == 0) break;

  sqr64(r[2],r[3],a[1]);
  if (--n == 0) break;

  sqr64(r[4],r[5],a[2]);
  if (--n == 0) break;

  sqr64(r[6],r[7],a[3]);
  if (--n == 0) break;

  a+=4;
  r+=8;
  }
 }
