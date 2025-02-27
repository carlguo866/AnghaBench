
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppc_cpu_t ;


 int PPC_OPCODE_E6500 ;
 int PPC_OPCODE_POWER9 ;
 char* _ (char*) ;

__attribute__((used)) static unsigned long
insert_esync (unsigned long insn,
       long value,
       ppc_cpu_t dialect,
       const char **errmsg)
{
  unsigned long ls = (insn >> 21) & 0x03;

  if (value == 0)
    {
      if (((dialect & PPC_OPCODE_E6500) != 0 && ls > 1)
   || ((dialect & PPC_OPCODE_POWER9) != 0 && ls > 2))
        *errmsg = _("illegal L operand value");
      return insn;
    }

  if ((ls & ~0x1)
      || (((value >> 1) & 0x1) ^ ls) == 0)
        *errmsg = _("incompatible L operand value");

  return insn | ((value & 0xf) << 16);
}
