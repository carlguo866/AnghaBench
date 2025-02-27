
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ia64_operand {int (* extract ) (struct ia64_operand const*,scalar_t__,scalar_t__*) ;} ;
typedef scalar_t__ ia64_insn ;
typedef enum ia64_insn_type { ____Placeholder_ia64_insn_type } ia64_insn_type ;
struct TYPE_2__ {int opcode_type; int flags; int* operands; } ;


 int IA64_OPCODE_F2_EQ_F3 ;
 int IA64_OPCODE_LEN_EQ_64MCNT ;
 int IA64_OPND_F2 ;
 int IA64_OPND_F3 ;
 int IA64_OPND_LEN6 ;
 struct ia64_operand* elf64_ia64_operands ;
 TYPE_1__* main_table ;
 int stub1 (struct ia64_operand const*,scalar_t__,scalar_t__*) ;
 int stub2 (struct ia64_operand const*,scalar_t__,scalar_t__*) ;
 int stub3 (struct ia64_operand const*,scalar_t__,scalar_t__*) ;
 int stub4 (struct ia64_operand const*,scalar_t__,scalar_t__*) ;

__attribute__((used)) static int
opcode_verify (ia64_insn opcode, int place, enum ia64_insn_type type)
{
  if (main_table[place].opcode_type != type)
    {
      return 0;
    }
  if (main_table[place].flags
      & (IA64_OPCODE_F2_EQ_F3 | IA64_OPCODE_LEN_EQ_64MCNT))
    {
      const struct ia64_operand *o1, *o2;
      ia64_insn f2, f3;

      if (main_table[place].flags & IA64_OPCODE_F2_EQ_F3)
 {
   o1 = elf64_ia64_operands + IA64_OPND_F2;
   o2 = elf64_ia64_operands + IA64_OPND_F3;
   (*o1->extract) (o1, opcode, &f2);
   (*o2->extract) (o2, opcode, &f3);
   if (f2 != f3)
     return 0;
 }
      else
 {
   ia64_insn len, count;


   o1 = elf64_ia64_operands + IA64_OPND_LEN6;
   o2 = elf64_ia64_operands + main_table[place].operands[2];
   (*o1->extract) (o1, opcode, &len);
   (*o2->extract) (o2, opcode, &count);
   if (len != 64 - count)
     return 0;
 }
    }
  return 1;
}
