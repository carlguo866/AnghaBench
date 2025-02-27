
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hi; scalar_t__ lo; } ;
union uint64_overlay {scalar_t__ full; TYPE_1__ part; } ;
typedef scalar_t__ u64 ;
typedef void* u32 ;
typedef scalar_t__ s32 ;
typedef int acpi_status ;


 int ACPI_DIV_64_BY_32 (void*,scalar_t__,scalar_t__,scalar_t__,void*) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_SHIFT_RIGHT_64 (scalar_t__,void*) ;
 int AE_AML_DIVIDE_BY_ZERO ;
 int AE_INFO ;
 int AE_OK ;
 int return_ACPI_STATUS (int ) ;
 int ut_divide ;

acpi_status
acpi_ut_divide(u64 in_dividend,
        u64 in_divisor, u64 *out_quotient, u64 *out_remainder)
{
 union uint64_overlay dividend;
 union uint64_overlay divisor;
 union uint64_overlay quotient;
 union uint64_overlay remainder;
 union uint64_overlay normalized_dividend;
 union uint64_overlay normalized_divisor;
 u32 partial1;
 union uint64_overlay partial2;
 union uint64_overlay partial3;

 ACPI_FUNCTION_TRACE(ut_divide);



 if (in_divisor == 0) {
  ACPI_ERROR((AE_INFO, "Divide by zero"));
  return_ACPI_STATUS(AE_AML_DIVIDE_BY_ZERO);
 }

 divisor.full = in_divisor;
 dividend.full = in_dividend;
 if (divisor.part.hi == 0) {




  remainder.part.hi = 0;





  ACPI_DIV_64_BY_32(0, dividend.part.hi, divisor.part.lo,
      quotient.part.hi, partial1);

  ACPI_DIV_64_BY_32(partial1, dividend.part.lo, divisor.part.lo,
      quotient.part.lo, remainder.part.lo);
 }

 else {




  quotient.part.hi = 0;
  normalized_dividend = dividend;
  normalized_divisor = divisor;



  do {
   ACPI_SHIFT_RIGHT_64(normalized_divisor.part.hi,
         normalized_divisor.part.lo);
   ACPI_SHIFT_RIGHT_64(normalized_dividend.part.hi,
         normalized_dividend.part.lo);

  } while (normalized_divisor.part.hi != 0);



  ACPI_DIV_64_BY_32(normalized_dividend.part.hi,
      normalized_dividend.part.lo,
      normalized_divisor.part.lo, quotient.part.lo,
      partial1);





  partial1 = quotient.part.lo * divisor.part.hi;
  partial2.full = (u64) quotient.part.lo * divisor.part.lo;
  partial3.full = (u64) partial2.part.hi + partial1;

  remainder.part.hi = partial3.part.lo;
  remainder.part.lo = partial2.part.lo;

  if (partial3.part.hi == 0) {
   if (partial3.part.lo >= dividend.part.hi) {
    if (partial3.part.lo == dividend.part.hi) {
     if (partial2.part.lo > dividend.part.lo) {
      quotient.part.lo--;
      remainder.full -= divisor.full;
     }
    } else {
     quotient.part.lo--;
     remainder.full -= divisor.full;
    }
   }

   remainder.full = remainder.full - dividend.full;
   remainder.part.hi = (u32)-((s32)remainder.part.hi);
   remainder.part.lo = (u32)-((s32)remainder.part.lo);

   if (remainder.part.lo) {
    remainder.part.hi--;
   }
  }
 }



 if (out_quotient) {
  *out_quotient = quotient.full;
 }
 if (out_remainder) {
  *out_remainder = remainder.full;
 }

 return_ACPI_STATUS(AE_OK);
}
