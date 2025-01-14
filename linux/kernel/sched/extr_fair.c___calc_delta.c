
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct load_weight {int inv_weight; } ;


 int WMULT_SHIFT ;
 int __update_inv_weight (struct load_weight*) ;
 int mul_u64_u32_shr (int,int,int) ;
 int scale_load_down (unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static u64 __calc_delta(u64 delta_exec, unsigned long weight, struct load_weight *lw)
{
 u64 fact = scale_load_down(weight);
 int shift = WMULT_SHIFT;

 __update_inv_weight(lw);

 if (unlikely(fact >> 32)) {
  while (fact >> 32) {
   fact >>= 1;
   shift--;
  }
 }


 fact = (u64)(u32)fact * lw->inv_weight;

 while (fact >> 32) {
  fact >>= 1;
  shift--;
 }

 return mul_u64_u32_shr(delta_exec, fact, shift);
}
