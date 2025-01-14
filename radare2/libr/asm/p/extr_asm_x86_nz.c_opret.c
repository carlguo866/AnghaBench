
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_8__ {TYPE_1__* operands; } ;
struct TYPE_7__ {int bits; } ;
struct TYPE_6__ {int type; int immediate; int sign; } ;
typedef TYPE_2__ RAsm ;
typedef TYPE_3__ Opcode ;


 int OT_CONSTANT ;
 int OT_UNKNOWN ;
 int OT_WORD ;

__attribute__((used)) static int opret(RAsm *a, ut8 *data, const Opcode *op) {
 int l = 0;
 int immediate = 0;
 if (a->bits == 16) {
  data[l++] = 0xc3;
  return l;
 }
 if (op->operands[0].type == OT_UNKNOWN) {
  data[l++] = 0xc3;
 } else if (op->operands[0].type & (OT_CONSTANT | OT_WORD)) {
  data[l++] = 0xc2;
  immediate = op->operands[0].immediate * op->operands[0].sign;
  data[l++] = immediate;
  data[l++] = immediate << 8;
 }
 return l;
}
