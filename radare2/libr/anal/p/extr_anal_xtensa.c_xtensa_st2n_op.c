
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
typedef scalar_t__ ut64 ;
struct TYPE_3__ {int type; int jump; scalar_t__ size; scalar_t__ fail; } ;
typedef TYPE_1__ RAnalOp ;
typedef int RAnal ;


 int R_ANAL_OP_TYPE_CJMP ;
 int R_ANAL_OP_TYPE_MOV ;
 int xtensa_imm6s (scalar_t__,int const*) ;

__attribute__((used)) static void xtensa_st2n_op (RAnal *anal, RAnalOp *op, ut64 addr, const ut8 *buf) {
 if (buf[0] & 0x80) {
  op->type = R_ANAL_OP_TYPE_CJMP;
  op->fail = addr + op->size;
  op->jump = xtensa_imm6s (addr, buf);
 } else {
  op->type = R_ANAL_OP_TYPE_MOV;
 }
}
