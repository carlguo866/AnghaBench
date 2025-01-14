
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* i32; } ;
typedef TYPE_1__ util_uint128_t ;
typedef int uint64_t ;
typedef int uint32_t ;



__attribute__((used)) static inline util_uint128_t util_div128_32(util_uint128_t a, uint32_t b)
{
 util_uint128_t out;
 uint64_t val = 0;

 for (int i = 3; i >= 0; i--) {
  val = (val << 32) | a.i32[i];
  if (val < b) {
   out.i32[i] = 0;
   continue;
  }

  out.i32[i] = (uint32_t)(val / b);
  val = val % b;
 }

 return out;
}
