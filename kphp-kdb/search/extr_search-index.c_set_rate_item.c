
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {int extra; int mask; int* rates; int rates_len; } ;


 int FLAG_DELETED ;
 size_t get_bitno (int,int) ;
 int* zzrealloc_ushort_mask (int*,int,int,int) ;

__attribute__((used)) static int set_rate_item (struct item *I, int n, int rate) {
  if (!I || (I->extra & FLAG_DELETED)) {
    return 0;
  }
  if ((I->mask & (1 << n)) == 0) {
    I->rates = zzrealloc_ushort_mask (I->rates, I->mask, I->mask | (1 << n), 4);
    I->mask |= (1 << n);
    I->rates_len++;
  }
  I->rates [get_bitno (I->mask, n)] = rate;
  return 1;
}
