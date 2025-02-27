
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ REG_P (scalar_t__) ;
 int emit_move_insn (scalar_t__,scalar_t__) ;
 scalar_t__ gen_reg_rtx (int) ;

rtx
copy_to_suggested_reg (rtx x, rtx target, enum machine_mode mode)
{
  rtx temp;

  if (target && REG_P (target))
    temp = target;
  else
    temp = gen_reg_rtx (mode);

  emit_move_insn (temp, x);
  return temp;
}
