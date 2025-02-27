
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mask; int* rates; int rates_len; } ;
typedef TYPE_1__ item_t ;


 size_t get_bitno (int,int) ;
 int* zzrealloc_ushort_mask (int*,int,int,int) ;

__attribute__((used)) static int incr_rate_item (item_t *I, int p, int rate_incr) {
  if ((I->mask & (1 << p)) == 0) {
    I->rates = zzrealloc_ushort_mask (I->rates, I->mask, I->mask | (1 << p), sizeof (int));
    I->mask |= (1 << p);
    I->rates_len++;
  }
  rate_incr += I->rates[get_bitno (I->mask, p)];
  I->rates[get_bitno (I->mask, p)] = rate_incr;
  return 1;
}
