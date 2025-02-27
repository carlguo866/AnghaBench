
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arc_operand_value {int dummy; } ;
struct arc_operand {int flags; } ;
typedef int arc_insn ;


 int ARC_OPERAND_SIGNED ;
 int I (int) ;
 size_t LS_OFFSET ;
 int OP_SHIMM ;
 size_t* arc_operand_map ;
 int * arc_operands ;
 long extract_reg (int*,int *,int,struct arc_operand_value const**,int*) ;
 int * ls_operand ;

__attribute__((used)) static long
extract_ld_offset (arc_insn *insn,
     const struct arc_operand *operand,
     int mods,
     const struct arc_operand_value **opval,
     int *invalid)
{
  int test = insn[0] & I(-1);
  int value;

  if (test)
    {
      value = insn[0] & 511;
      if ((operand->flags & ARC_OPERAND_SIGNED) && (value & 256))
 value -= 512;
      if (value)
 ls_operand[LS_OFFSET] = OP_SHIMM;

      return value;
    }

  return extract_reg (insn, &arc_operands[arc_operand_map['c']],
        mods, opval, invalid);
}
