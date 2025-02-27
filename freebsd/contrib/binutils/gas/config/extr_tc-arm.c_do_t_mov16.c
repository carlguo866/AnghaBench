
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int bfd_vma ;
typedef int bfd_boolean ;
struct TYPE_6__ {int X_add_number; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_2__ exp; } ;
struct TYPE_8__ {int instruction; TYPE_3__ reloc; TYPE_1__* operands; } ;
struct TYPE_5__ {int reg; } ;


 scalar_t__ BFD_RELOC_ARM_MOVT ;
 scalar_t__ BFD_RELOC_ARM_MOVW ;
 scalar_t__ BFD_RELOC_ARM_THUMB_MOVT ;
 scalar_t__ BFD_RELOC_ARM_THUMB_MOVW ;
 scalar_t__ BFD_RELOC_UNUSED ;
 int _ (char*) ;
 int constraint (int,int ) ;
 TYPE_4__ inst ;

__attribute__((used)) static void
do_t_mov16 (void)
{
  bfd_vma imm;
  bfd_boolean top;

  top = (inst.instruction & 0x00800000) != 0;
  if (inst.reloc.type == BFD_RELOC_ARM_MOVW)
    {
      constraint (top, _(":lower16: not allowed this instruction"));
      inst.reloc.type = BFD_RELOC_ARM_THUMB_MOVW;
    }
  else if (inst.reloc.type == BFD_RELOC_ARM_MOVT)
    {
      constraint (!top, _(":upper16: not allowed this instruction"));
      inst.reloc.type = BFD_RELOC_ARM_THUMB_MOVT;
    }

  inst.instruction |= inst.operands[0].reg << 8;
  if (inst.reloc.type == BFD_RELOC_UNUSED)
    {
      imm = inst.reloc.exp.X_add_number;
      inst.instruction |= (imm & 0xf000) << 4;
      inst.instruction |= (imm & 0x0800) << 15;
      inst.instruction |= (imm & 0x0700) << 4;
      inst.instruction |= (imm & 0x00ff);
    }
}
