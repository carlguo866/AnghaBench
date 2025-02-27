
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t xtensa_opcode ;
struct TYPE_5__ {TYPE_1__* opcodes; } ;
typedef TYPE_2__ xtensa_isa_internal ;
typedef scalar_t__ xtensa_isa ;
struct TYPE_4__ {int flags; } ;


 int CHECK_OPCODE (TYPE_2__*,size_t,int ) ;
 int XTENSA_OPCODE_IS_CALL ;
 int XTENSA_UNDEFINED ;

int
xtensa_opcode_is_call (xtensa_isa isa, xtensa_opcode opc)
{
  xtensa_isa_internal *intisa = (xtensa_isa_internal *) isa;
  CHECK_OPCODE (intisa, opc, XTENSA_UNDEFINED);
  if ((intisa->opcodes[opc].flags & XTENSA_OPCODE_IS_CALL) != 0) {
   return 1;
  }
  return 0;
}
