
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ rtx ;
struct TYPE_8__ {TYPE_2__* elt; } ;
struct TYPE_7__ {int n_elements; } ;
struct TYPE_5__ {int val_rtx; } ;
struct TYPE_6__ {TYPE_1__ u; } ;


 scalar_t__ ASM_OPERANDS ;
 scalar_t__ CALL_INSN_FUNCTION_USAGE (scalar_t__) ;
 scalar_t__ CALL_P (scalar_t__) ;
 scalar_t__ CLOBBER ;
 int CONST_OR_PURE_CALL_P (scalar_t__) ;
 int FIRST_PSEUDO_REGISTER ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int GET_MODE (int ) ;
 scalar_t__ HARD_REGNO_CALL_PART_CLOBBERED (int,int ) ;
 int INSN_P (scalar_t__) ;
 scalar_t__ LABEL_P (scalar_t__) ;
 scalar_t__ MAX_USELESS_VALUES ;
 scalar_t__ MEM_VOLATILE_P (scalar_t__) ;
 scalar_t__ NONJUMP_INSN_P (scalar_t__) ;
 scalar_t__ PATTERN (scalar_t__) ;
 scalar_t__ REG_INC ;
 int REG_LIBCALL ;
 scalar_t__ REG_NOTES (scalar_t__) ;
 scalar_t__ REG_NOTE_KIND (scalar_t__) ;
 int REG_RETVAL ;
 int REG_SETJMP ;
 TYPE_4__* REG_VALUES (int) ;
 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__* call_used_regs ;
 int callmem ;
 int cselib_clear_table () ;
 scalar_t__ cselib_current_insn ;
 int cselib_current_insn_in_libcall ;
 TYPE_3__* cselib_hash_table ;
 int cselib_invalidate_mem (int ) ;
 int cselib_invalidate_regno (int,int ) ;
 int cselib_invalidate_rtx (scalar_t__) ;
 int cselib_record_sets (scalar_t__) ;
 scalar_t__ find_reg_note (scalar_t__,int ,int *) ;
 scalar_t__ n_useless_values ;
 int * reg_raw_mode ;
 int remove_useless_values () ;

void
cselib_process_insn (rtx insn)
{
  int i;
  rtx x;

  if (find_reg_note (insn, REG_LIBCALL, ((void*)0)))
    cselib_current_insn_in_libcall = 1;
  cselib_current_insn = insn;


  if (LABEL_P (insn)
      || (CALL_P (insn)
   && find_reg_note (insn, REG_SETJMP, ((void*)0)))
      || (NONJUMP_INSN_P (insn)
   && GET_CODE (PATTERN (insn)) == ASM_OPERANDS
   && MEM_VOLATILE_P (PATTERN (insn))))
    {
      if (find_reg_note (insn, REG_RETVAL, ((void*)0)))
        cselib_current_insn_in_libcall = 0;
      cselib_clear_table ();
      return;
    }

  if (! INSN_P (insn))
    {
      if (find_reg_note (insn, REG_RETVAL, ((void*)0)))
        cselib_current_insn_in_libcall = 0;
      cselib_current_insn = 0;
      return;
    }




  if (CALL_P (insn))
    {
      for (i = 0; i < FIRST_PSEUDO_REGISTER; i++)
 if (call_used_regs[i]
     || (REG_VALUES (i) && REG_VALUES (i)->elt
  && HARD_REGNO_CALL_PART_CLOBBERED (i,
        GET_MODE (REG_VALUES (i)->elt->u.val_rtx))))
   cselib_invalidate_regno (i, reg_raw_mode[i]);

      if (! CONST_OR_PURE_CALL_P (insn))
 cselib_invalidate_mem (callmem);
    }

  cselib_record_sets (insn);
  if (CALL_P (insn))
    for (x = CALL_INSN_FUNCTION_USAGE (insn); x; x = XEXP (x, 1))
      if (GET_CODE (XEXP (x, 0)) == CLOBBER)
 cselib_invalidate_rtx (XEXP (XEXP (x, 0), 0));

  if (find_reg_note (insn, REG_RETVAL, ((void*)0)))
    cselib_current_insn_in_libcall = 0;
  cselib_current_insn = 0;

  if (n_useless_values > MAX_USELESS_VALUES



      && (unsigned int)n_useless_values > cselib_hash_table->n_elements / 4)
    remove_useless_values ();
}
