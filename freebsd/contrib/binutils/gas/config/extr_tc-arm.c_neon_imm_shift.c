
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct neon_type_el {int size; } ;
struct TYPE_4__ {int instruction; TYPE_1__* operands; } ;
struct TYPE_3__ {int reg; } ;


 int HI1 (int ) ;
 int LOW4 (int ) ;
 TYPE_2__ inst ;
 int neon_dp_fixup (int) ;

__attribute__((used)) static void
neon_imm_shift (int write_ubit, int uval, int isquad, struct neon_type_el et,
                unsigned immbits)
{
  unsigned size = et.size >> 3;
  inst.instruction |= LOW4 (inst.operands[0].reg) << 12;
  inst.instruction |= HI1 (inst.operands[0].reg) << 22;
  inst.instruction |= LOW4 (inst.operands[1].reg);
  inst.instruction |= HI1 (inst.operands[1].reg) << 5;
  inst.instruction |= (isquad != 0) << 6;
  inst.instruction |= immbits << 16;
  inst.instruction |= (size >> 3) << 7;
  inst.instruction |= (size & 0x7) << 19;
  if (write_ubit)
    inst.instruction |= (uval != 0) << 24;

  inst.instruction = neon_dp_fixup (inst.instruction);
}
