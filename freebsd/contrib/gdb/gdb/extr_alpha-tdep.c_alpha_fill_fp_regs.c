
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALPHA_FP0_REGNUM ;
 int ALPHA_FPCR_REGNUM ;
 int regcache_collect (int,void*) ;

void
alpha_fill_fp_regs (int regno, void *f0_f30, void *fpcr)
{
  int i;

  for (i = ALPHA_FP0_REGNUM; i < ALPHA_FP0_REGNUM + 31; ++i)
    if (regno == i || regno == -1)
      regcache_collect (i, (char *)f0_f30 + (i - ALPHA_FP0_REGNUM) * 8);

  if (regno == ALPHA_FPCR_REGNUM || regno == -1)
    regcache_collect (ALPHA_FPCR_REGNUM, fpcr);
}
