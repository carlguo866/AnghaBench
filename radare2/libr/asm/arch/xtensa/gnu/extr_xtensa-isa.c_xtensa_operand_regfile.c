
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xtensa_regfile ;
struct TYPE_3__ {int regfile; } ;
typedef TYPE_1__ xtensa_operand_internal ;
typedef int xtensa_opcode ;
typedef int xtensa_isa_internal ;
typedef scalar_t__ xtensa_isa ;


 int XTENSA_UNDEFINED ;
 TYPE_1__* get_operand (int *,int ,int) ;

xtensa_regfile
xtensa_operand_regfile (xtensa_isa isa, xtensa_opcode opc, int opnd)
{
  xtensa_isa_internal *intisa = (xtensa_isa_internal *) isa;
  xtensa_operand_internal *intop;

  intop = get_operand (intisa, opc, opnd);
  if (!intop) {
   return XTENSA_UNDEFINED;
  }

  return intop->regfile;
}
