
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ut8 ;
typedef scalar_t__ st8 ;
struct TYPE_9__ {TYPE_1__* operands; } ;
struct TYPE_8__ {scalar_t__ pc; } ;
struct TYPE_7__ {scalar_t__ immediate; } ;
typedef TYPE_2__ RAsm ;
typedef TYPE_3__ Opcode ;


 int is_valid_registers (TYPE_3__ const*) ;

__attribute__((used)) static int oploop(RAsm *a, ut8 *data, const Opcode *op) {
 is_valid_registers (op);
 int l = 0;
 data[l++] = 0xe2;
 st8 delta = op->operands[0].immediate - a->pc - 2;
 data[l++] = (ut8)delta;
 return l;
}
