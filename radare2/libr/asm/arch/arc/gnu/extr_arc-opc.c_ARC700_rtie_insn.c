
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arc_insn ;



int
ARC700_rtie_insn (arc_insn insn)
{
  return insn == 0x242f003f;
}
