
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_5__ {int operands_count; TYPE_1__* operands; } ;
struct TYPE_4__ {int type; int* regs; int reg; } ;
typedef int RAsm ;
typedef TYPE_2__ Opcode ;


 int OT_DWORD ;
 int OT_FPUREG ;
 int OT_MEMORY ;
 int OT_QWORD ;
 int OT_REGALL ;

__attribute__((used)) static int opfsubr(RAsm *a, ut8 *data, const Opcode *op) {
 int l = 0;
 switch (op->operands_count) {
 case 1:
  if ( op->operands[0].type & OT_MEMORY ) {
   if ( op->operands[0].type & OT_DWORD ) {
    data[l++] = 0xd8;
    data[l++] = 0x28 | op->operands[0].regs[0];
   } else if ( op->operands[0].type & OT_QWORD ) {
    data[l++] = 0xdc;
    data[l++] = 0x28 | op->operands[0].regs[0];
   } else {
    return -1;
   }
  } else {
   return -1;
  }
  break;
 case 2:
  if ( op->operands[0].type & OT_FPUREG & ~OT_REGALL && op->operands[0].reg == 0 &&
       op->operands[1].type & OT_FPUREG & ~OT_REGALL ) {
   data[l++] = 0xd8;
   data[l++] = 0xe8 | op->operands[1].reg;
  } else if ( op->operands[0].type & OT_FPUREG & ~OT_REGALL &&
       op->operands[1].type & OT_FPUREG & ~OT_REGALL && op->operands[1].reg == 0 ) {
   data[l++] = 0xdc;
   data[l++] = 0xe0 | op->operands[0].reg;
  } else {
   return -1;
  }
  break;
 default:
  return -1;
 }
 return l;
}
