
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppc_cpu_t ;


 int ISA_V2 ;

__attribute__((used)) static long
extract_bdp (unsigned long insn,
      ppc_cpu_t dialect,
      int *invalid)
{
  if ((dialect & ISA_V2) == 0)
    {
      if (((insn & (1 << 21)) == 0) == ((insn & (1 << 15)) == 0))
 *invalid = 1;
    }
  else
    {
      if ((insn & (0x17 << 21)) != (0x07 << 21)
   && (insn & (0x1d << 21)) != (0x19 << 21))
 *invalid = 1;
    }

  return ((insn & 0xfffc) ^ 0x8000) - 0x8000;
}
