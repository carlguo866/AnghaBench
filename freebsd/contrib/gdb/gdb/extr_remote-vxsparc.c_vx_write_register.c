
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regcache {int dummy; } ;
typedef int ULONGEST ;
typedef int CORE_ADDR ;


 int PTRACE_SETFPREGS ;
 int PTRACE_SETREGS ;
 int SPARC32_NPC_REGNUM ;
 int SPARC32_Y_REGNUM ;
 int SPARC_FPREG_PLEN ;
 int SPARC_G0_REGNUM ;
 int SPARC_GREG_PLEN ;
 int SPARC_I7_REGNUM ;
 int SPARC_L0_REGNUM ;
 int SPARC_SP_REGNUM ;
 struct regcache* current_regcache ;
 int net_write_registers (char*,int,int ) ;
 int regcache_cooked_read_unsigned (struct regcache*,int,int *) ;
 int sparc32_collect_fpregset (struct regcache*,int,char*) ;
 int sparc32_collect_gregset (int *,struct regcache*,int,char*) ;
 int sparc_collect_rwindow (struct regcache*,int ,int) ;
 scalar_t__ target_has_fp ;
 int vxsparc_gregset ;

void
vx_write_register (int regnum)
{
  struct regcache *regcache = current_regcache;
  char gregs[SPARC_GREG_PLEN];
  char fpregs[SPARC_FPREG_PLEN];
  int gregs_p = 1;
  int fpregs_p = 1;
  CORE_ADDR sp;

  if (regnum != -1)
    {
      if ((SPARC_G0_REGNUM <= regnum && regnum <= SPARC_I7_REGNUM)
   || (SPARC32_Y_REGNUM <= regnum && regnum <= SPARC32_NPC_REGNUM))
 fpregs_p = 0;
      else
 gregs_p = 0;
    }


  if (gregs_p)
    {
      sparc32_collect_gregset (&vxsparc_gregset, regcache, -1, gregs);
      net_write_registers (gregs, SPARC_GREG_PLEN, PTRACE_SETREGS);


      if (regnum == -1 || regnum == SPARC_SP_REGNUM
   || (regnum >= SPARC_L0_REGNUM && regnum <= SPARC_I7_REGNUM))
 {
   ULONGEST sp;

   regcache_cooked_read_unsigned (regcache, SPARC_SP_REGNUM, &sp);
   sparc_collect_rwindow (regcache, sp, regnum);
 }
    }


  if (fpregs_p && target_has_fp)
    {
      sparc32_collect_fpregset (regcache, -1, fpregs);
      net_write_registers (fpregs, SPARC_FPREG_PLEN, PTRACE_SETFPREGS);
    }
}
