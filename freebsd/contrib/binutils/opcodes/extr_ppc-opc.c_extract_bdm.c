
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PPC_OPCODE_POWER4 ;

__attribute__((used)) static long
extract_bdm (unsigned long insn,
      int dialect,
      int *invalid)
{
  if ((dialect & PPC_OPCODE_POWER4) == 0)
    {
      if (((insn & (1 << 21)) == 0) != ((insn & (1 << 15)) == 0))
 *invalid = 1;
    }
  else
    {
      if ((insn & (0x17 << 21)) != (0x06 << 21)
   && (insn & (0x1d << 21)) != (0x18 << 21))
 *invalid = 1;
    }

  return ((insn & 0xfffc) ^ 0x8000) - 0x8000;
}
