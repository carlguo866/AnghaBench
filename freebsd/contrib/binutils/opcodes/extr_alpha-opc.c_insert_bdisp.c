
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char*) ;

__attribute__((used)) static unsigned
insert_bdisp (unsigned insn, int value, const char **errmsg)
{
  if (errmsg != (const char **)((void*)0) && (value & 3))
    *errmsg = _("branch operand unaligned");
  return insn | ((value / 4) & 0x1FFFFF);
}
