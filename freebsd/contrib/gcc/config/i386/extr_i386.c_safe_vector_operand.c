
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ CONST0_RTX (int) ;
 scalar_t__ const0_rtx ;

__attribute__((used)) static rtx
safe_vector_operand (rtx x, enum machine_mode mode)
{
  if (x == const0_rtx)
    x = CONST0_RTX (mode);
  return x;
}
