
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int CONST0_RTX (int) ;
 scalar_t__ FIRST_PSEUDO_REGISTER ;
 int GE ;
 int GET_MODE (scalar_t__) ;
 scalar_t__ MEM_P (scalar_t__) ;
 scalar_t__ MEM_VOLATILE_P (scalar_t__) ;
 int NO_DEFER_POP ;
 int NULL_RTX ;
 int OK_DEFER_POP ;
 scalar_t__ REGNO (scalar_t__) ;
 scalar_t__ REG_P (scalar_t__) ;
 int do_compare_rtx_and_jump (scalar_t__,int ,int ,int ,int,int ,int ,scalar_t__) ;
 int emit_label (scalar_t__) ;
 int emit_move_insn (scalar_t__,scalar_t__) ;
 scalar_t__ expand_abs_nojump (int,scalar_t__,scalar_t__,int) ;
 scalar_t__ expand_unop (int,int ,scalar_t__,scalar_t__,int ) ;
 int flag_trapv ;
 scalar_t__ gen_label_rtx () ;
 scalar_t__ gen_reg_rtx (int) ;
 int neg_optab ;
 int negv_optab ;

rtx
expand_abs (enum machine_mode mode, rtx op0, rtx target,
     int result_unsignedp, int safe)
{
  rtx temp, op1;

  if (! flag_trapv)
    result_unsignedp = 1;

  temp = expand_abs_nojump (mode, op0, target, result_unsignedp);
  if (temp != 0)
    return temp;





  if (op0 == target && REG_P (op0)
      && REGNO (op0) >= FIRST_PSEUDO_REGISTER)
    safe = 1;

  op1 = gen_label_rtx ();
  if (target == 0 || ! safe
      || GET_MODE (target) != mode
      || (MEM_P (target) && MEM_VOLATILE_P (target))
      || (REG_P (target)
   && REGNO (target) < FIRST_PSEUDO_REGISTER))
    target = gen_reg_rtx (mode);

  emit_move_insn (target, op0);
  NO_DEFER_POP;

  do_compare_rtx_and_jump (target, CONST0_RTX (mode), GE, 0, mode,
      NULL_RTX, NULL_RTX, op1);

  op0 = expand_unop (mode, result_unsignedp ? neg_optab : negv_optab,
                     target, target, 0);
  if (op0 != target)
    emit_move_insn (target, op0);
  emit_label (op1);
  OK_DEFER_POP;
  return target;
}
