
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 scalar_t__ CTM_COEFF_4_0 ;
 int CTM_COEFF_ABS (int) ;
 int CTM_COEFF_LIMITED_RANGE ;
 int CTM_COEFF_SIGN ;
 int clamp_val (int ,int ,scalar_t__) ;
 int mul_u32_u32 (int,int) ;

__attribute__((used)) static u64 *ctm_mult_by_limited(u64 *result, const u64 *input)
{
 int i;

 for (i = 0; i < 9; i++) {
  u64 user_coeff = input[i];
  u32 limited_coeff = CTM_COEFF_LIMITED_RANGE;
  u32 abs_coeff = clamp_val(CTM_COEFF_ABS(user_coeff), 0,
       CTM_COEFF_4_0 - 1) >> 2;






  result[i] = mul_u32_u32(limited_coeff, abs_coeff) >> 30;
  result[i] |= user_coeff & CTM_COEFF_SIGN;
 }

 return result;
}
