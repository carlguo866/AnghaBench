
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elim_table {scalar_t__ offset; scalar_t__ previous_offset; scalar_t__ initial_offset; scalar_t__ can_eliminate; } ;
typedef int rtx ;


 int CODE_LABEL_NUMBER (int ) ;
 unsigned int NUM_ELIMINABLE_REGS ;
 int first_label_num ;
 scalar_t__ num_not_at_initial_offset ;
 scalar_t__** offsets_at ;
 struct elim_table* reg_eliminate ;

__attribute__((used)) static void
set_offsets_for_label (rtx insn)
{
  unsigned int i;
  int label_nr = CODE_LABEL_NUMBER (insn);
  struct elim_table *ep;

  num_not_at_initial_offset = 0;
  for (i = 0, ep = reg_eliminate; i < NUM_ELIMINABLE_REGS; ep++, i++)
    {
      ep->offset = ep->previous_offset
   = offsets_at[label_nr - first_label_num][i];
      if (ep->can_eliminate && ep->offset != ep->initial_offset)
 num_not_at_initial_offset++;
    }
}
