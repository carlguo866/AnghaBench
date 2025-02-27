
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct constant_pool {scalar_t__ pool_insn; struct constant_pool* next; } ;
typedef scalar_t__ rtx ;


 scalar_t__ BARRIER ;
 scalar_t__ CODE_LABEL ;
 scalar_t__ GET_CODE (scalar_t__) ;
 scalar_t__ INSN ;
 scalar_t__ JUMP_INSN ;
 scalar_t__ LABEL_REF ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 scalar_t__ NULL_RTX ;
 scalar_t__ PATTERN (scalar_t__) ;
 scalar_t__ PREV_INSN (scalar_t__) ;
 scalar_t__ SET ;
 scalar_t__ SET_DEST (scalar_t__) ;
 scalar_t__ SET_SRC (scalar_t__) ;
 scalar_t__ UNSPEC ;
 scalar_t__ UNSPEC_RELOAD_BASE ;
 scalar_t__ XEXP (scalar_t__,int ) ;
 scalar_t__ XINT (scalar_t__,int) ;
 scalar_t__ get_insns () ;
 scalar_t__ pc_rtx ;
 int remove_insn (scalar_t__) ;
 int s390_free_pool (struct constant_pool*) ;

__attribute__((used)) static void
s390_chunkify_cancel (struct constant_pool *pool_list)
{
  struct constant_pool *curr_pool = ((void*)0);
  rtx insn;



  for (curr_pool = pool_list; curr_pool; curr_pool = curr_pool->next)
    {

      rtx barrier = PREV_INSN (curr_pool->pool_insn);
      rtx jump = barrier? PREV_INSN (barrier) : NULL_RTX;
      rtx label = NEXT_INSN (curr_pool->pool_insn);

      if (jump && GET_CODE (jump) == JUMP_INSN
   && barrier && GET_CODE (barrier) == BARRIER
   && label && GET_CODE (label) == CODE_LABEL
   && GET_CODE (PATTERN (jump)) == SET
   && SET_DEST (PATTERN (jump)) == pc_rtx
   && GET_CODE (SET_SRC (PATTERN (jump))) == LABEL_REF
   && XEXP (SET_SRC (PATTERN (jump)), 0) == label)
 {
   remove_insn (jump);
   remove_insn (barrier);
   remove_insn (label);
 }

      remove_insn (curr_pool->pool_insn);
    }



  for (insn = get_insns (); insn; )
    {
      rtx next_insn = NEXT_INSN (insn);

      if (GET_CODE (insn) == INSN
   && GET_CODE (PATTERN (insn)) == SET
   && GET_CODE (SET_SRC (PATTERN (insn))) == UNSPEC
   && XINT (SET_SRC (PATTERN (insn)), 1) == UNSPEC_RELOAD_BASE)
 remove_insn (insn);

      insn = next_insn;
    }



  while (pool_list)
    {
      struct constant_pool *next = pool_list->next;
      s390_free_pool (pool_list);
      pool_list = next;
    }
}
