
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_2__ {int (* builtin_setjmp_frame_value ) () ;} ;


 int GET_MODE_SIZE (int) ;
 scalar_t__ HAVE_builtin_setjmp_setup ;
 int NULL_RTX ;
 int Pmode ;
 int SAVE_NONLOCAL ;
 int STACK_SAVEAREA_MODE (int ) ;
 int convert_memory_address (int,int ) ;
 int current_function_calls_setjmp ;
 int current_function_has_nonlocal_label ;
 int emit_insn (int ) ;
 int emit_move_insn (int ,int ) ;
 int emit_stack_save (int ,int *,int ) ;
 int force_operand (int ,int ) ;
 int force_reg (int,int ) ;
 int gen_builtin_setjmp_setup (int ) ;
 int gen_rtx_LABEL_REF (int,int ) ;
 int gen_rtx_MEM (int,int ) ;
 int new_alias_set () ;
 int plus_constant (int ,int) ;
 int set_mem_alias_set (int ,int) ;
 int setjmp_alias_set ;
 int stub1 () ;
 TYPE_1__ targetm ;
 int validize_mem (int ) ;

void
expand_builtin_setjmp_setup (rtx buf_addr, rtx receiver_label)
{
  enum machine_mode sa_mode = STACK_SAVEAREA_MODE (SAVE_NONLOCAL);
  rtx stack_save;
  rtx mem;

  if (setjmp_alias_set == -1)
    setjmp_alias_set = new_alias_set ();

  buf_addr = convert_memory_address (Pmode, buf_addr);

  buf_addr = force_reg (Pmode, force_operand (buf_addr, NULL_RTX));





  mem = gen_rtx_MEM (Pmode, buf_addr);
  set_mem_alias_set (mem, setjmp_alias_set);
  emit_move_insn (mem, targetm.builtin_setjmp_frame_value ());

  mem = gen_rtx_MEM (Pmode, plus_constant (buf_addr, GET_MODE_SIZE (Pmode))),
  set_mem_alias_set (mem, setjmp_alias_set);

  emit_move_insn (validize_mem (mem),
    force_reg (Pmode, gen_rtx_LABEL_REF (Pmode, receiver_label)));

  stack_save = gen_rtx_MEM (sa_mode,
       plus_constant (buf_addr,
        2 * GET_MODE_SIZE (Pmode)));
  set_mem_alias_set (stack_save, setjmp_alias_set);
  emit_stack_save (SAVE_NONLOCAL, &stack_save, NULL_RTX);
  current_function_calls_setjmp = 1;



  current_function_has_nonlocal_label = 1;
}
