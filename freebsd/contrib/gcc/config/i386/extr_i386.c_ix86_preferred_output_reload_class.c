
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum reg_class { ____Placeholder_reg_class } reg_class ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ FLOAT_CLASS_P (int) ;
 int FP_SECOND_REG ;
 int FP_SECOND_SSE_REGS ;
 int FP_TOP_REG ;
 int FP_TOP_SSE_REGS ;
 int GET_MODE (int ) ;
 scalar_t__ MAYBE_SSE_CLASS_P (int) ;
 int NO_REGS ;
 scalar_t__ SCALAR_FLOAT_MODE_P (int) ;
 scalar_t__ SSE_FLOAT_MODE_P (int) ;
 int SSE_REGS ;
 scalar_t__ TARGET_80387 ;
 scalar_t__ TARGET_SSE_MATH ;

enum reg_class
ix86_preferred_output_reload_class (rtx x, enum reg_class class)
{
  enum machine_mode mode = GET_MODE (x);




  mode = GET_MODE (x);
  if (TARGET_SSE_MATH && SSE_FLOAT_MODE_P (mode))
    return MAYBE_SSE_CLASS_P (class) ? SSE_REGS : NO_REGS;

  if (TARGET_80387 && SCALAR_FLOAT_MODE_P (mode))
    {
      if (class == FP_TOP_SSE_REGS)
 return FP_TOP_REG;
      else if (class == FP_SECOND_SSE_REGS)
 return FP_SECOND_REG;
      else
 return FLOAT_CLASS_P (class) ? class : NO_REGS;
    }

  return class;
}
