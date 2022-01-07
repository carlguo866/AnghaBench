
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int int64_t ;
struct TYPE_5__ {double d; int x; } ;
typedef TYPE_2__ doublebits ;
struct TYPE_4__ {double hi; double lo; } ;
struct TYPE_6__ {long double ld; TYPE_1__ s; } ;
typedef TYPE_3__ DD ;


 int INT64_C (int) ;
 int const UINT32_C (int) ;
 int UINT64_C (int) ;
 int UINT64_MAX ;

uint64_t __fixunstfdi(long double input) {
  const DD x = {.ld = input};
  const doublebits hibits = {.d = x.s.hi};

  const uint32_t highWordMinusOne =
      (uint32_t)(hibits.x >> 32) - UINT32_C(0x3ff00000);


  if (UINT32_C(0x04000000) > highWordMinusOne) {
    const int unbiasedHeadExponent = highWordMinusOne >> 20;

    uint64_t result = hibits.x & UINT64_C(0x000fffffffffffff);
    result |= UINT64_C(0x0010000000000000);
    result <<= 11;


    if (0.0 != x.s.lo) {
      const doublebits lobits = {.d = x.s.lo};
      int64_t tailMantissa = lobits.x & INT64_C(0x000fffffffffffff);
      tailMantissa |= INT64_C(0x0010000000000000);



      const int64_t negationMask = ((int64_t)(lobits.x)) >> 63;
      tailMantissa = (tailMantissa ^ negationMask) - negationMask;



      const int biasedTailExponent = (int)(lobits.x >> 52) & 0x7ff;



      tailMantissa >>=
          (unbiasedHeadExponent - (biasedTailExponent - (1023 - 11)));

      result += tailMantissa;
    }

    result >>= (63 - unbiasedHeadExponent);
    return result;
  }


  if (1.0 > x.s.hi)
    return UINT64_C(0);
  else
    return UINT64_MAX;
}
