
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ CONST0_RTX (int) ;
 int GET_MODE (scalar_t__) ;
 scalar_t__ TARGET_SSE2 ;
 scalar_t__ const0_rtx ;
 scalar_t__ standard_sse_mode_p (int) ;
 scalar_t__ vector_all_ones_operand (scalar_t__,int) ;

int
standard_sse_constant_p (rtx x)
{
  enum machine_mode mode = GET_MODE (x);

  if (x == const0_rtx || x == CONST0_RTX (GET_MODE (x)))
    return 1;
  if (vector_all_ones_operand (x, mode)
      && standard_sse_mode_p (mode))
    return TARGET_SSE2 ? 2 : -1;

  return 0;
}
