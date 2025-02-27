
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ CONST_INT ;
 int DImode ;
 scalar_t__ GEN_INT (int) ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int const INTVAL (scalar_t__) ;
 scalar_t__ TARGET_CMOVE ;
 int emit_insn (int ) ;
 int emit_move_insn (scalar_t__,scalar_t__) ;
 int gen_lshrdi3 (scalar_t__,scalar_t__,scalar_t__) ;
 int gen_lshrsi3 (scalar_t__,scalar_t__,scalar_t__) ;
 int gen_x86_64_shift_adj (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int gen_x86_64_shrd (scalar_t__,scalar_t__,scalar_t__) ;
 int gen_x86_shift_adj_1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int gen_x86_shift_adj_2 (scalar_t__,scalar_t__,scalar_t__) ;
 int gen_x86_shrd_1 (scalar_t__,scalar_t__,scalar_t__) ;
 int ix86_expand_clear (scalar_t__) ;
 int rtx_equal_p (scalar_t__,scalar_t__) ;
 int split_di (scalar_t__*,int,scalar_t__*,scalar_t__*) ;
 int split_ti (scalar_t__*,int,scalar_t__*,scalar_t__*) ;
 int stub1 (scalar_t__*,int,scalar_t__*,scalar_t__*) ;
 int stub2 (scalar_t__,scalar_t__,scalar_t__) ;
 int stub3 (scalar_t__,scalar_t__,scalar_t__) ;
 int stub4 (scalar_t__,scalar_t__,scalar_t__) ;
 int stub5 (scalar_t__*,int,scalar_t__*,scalar_t__*) ;
 int stub6 (scalar_t__,scalar_t__,scalar_t__) ;
 int stub7 (scalar_t__,scalar_t__,scalar_t__) ;
 int stub8 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

void
ix86_split_lshr (rtx *operands, rtx scratch, enum machine_mode mode)
{
  rtx low[2], high[2];
  int count;
  const int single_width = mode == DImode ? 32 : 64;

  if (GET_CODE (operands[2]) == CONST_INT)
    {
      (mode == DImode ? split_di : split_ti) (operands, 2, low, high);
      count = INTVAL (operands[2]) & (single_width * 2 - 1);

      if (count >= single_width)
 {
   emit_move_insn (low[0], high[1]);
   ix86_expand_clear (high[0]);

   if (count > single_width)
     emit_insn ((mode == DImode
   ? gen_lshrsi3
   : gen_lshrdi3) (low[0], low[0],
     GEN_INT (count - single_width)));
 }
      else
 {
   if (!rtx_equal_p (operands[0], operands[1]))
     emit_move_insn (operands[0], operands[1]);
   emit_insn ((mode == DImode
        ? gen_x86_shrd_1
        : gen_x86_64_shrd) (low[0], high[0], GEN_INT (count)));
   emit_insn ((mode == DImode
        ? gen_lshrsi3
        : gen_lshrdi3) (high[0], high[0], GEN_INT (count)));
 }
    }
  else
    {
      if (!rtx_equal_p (operands[0], operands[1]))
 emit_move_insn (operands[0], operands[1]);

      (mode == DImode ? split_di : split_ti) (operands, 1, low, high);

      emit_insn ((mode == DImode
    ? gen_x86_shrd_1
    : gen_x86_64_shrd) (low[0], high[0], operands[2]));
      emit_insn ((mode == DImode
    ? gen_lshrsi3
    : gen_lshrdi3) (high[0], high[0], operands[2]));


      if (TARGET_CMOVE && scratch)
 {
   ix86_expand_clear (scratch);
   emit_insn ((mode == DImode
        ? gen_x86_shift_adj_1
        : gen_x86_64_shift_adj) (low[0], high[0], operands[2],
            scratch));
 }
      else
 emit_insn (gen_x86_shift_adj_2 (low[0], high[0], operands[2]));
    }
}
