
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPARC64_FPRS_REGNUM ;
 int SPARC64_NPC_REGNUM ;
 int SPARC64_PC_REGNUM ;
 int SPARC64_STATE_REGNUM ;
 int SPARC64_Y_REGNUM ;
 int SPARC_G1_REGNUM ;
 int SPARC_G7_REGNUM ;
 int SPARC_I0_REGNUM ;
 int SPARC_I7_REGNUM ;
 int SPARC_L0_REGNUM ;
 int SPARC_L7_REGNUM ;
 int SPARC_O0_REGNUM ;
 int SPARC_O7_REGNUM ;
 int current_gdbarch ;
 int gdbarch_ptr_bit (int ) ;
 int sparc32_gregset_supplies_p (int) ;

__attribute__((used)) static int
sparc64_gregset_supplies_p (int regnum)
{
  if (gdbarch_ptr_bit (current_gdbarch) == 32)
    return sparc32_gregset_supplies_p (regnum);


  if ((regnum >= SPARC_G1_REGNUM && regnum <= SPARC_G7_REGNUM)
      || (regnum >= SPARC_O0_REGNUM && regnum <= SPARC_O7_REGNUM)
      || (regnum >= SPARC_L0_REGNUM && regnum <= SPARC_L7_REGNUM)
      || (regnum >= SPARC_I0_REGNUM && regnum <= SPARC_I7_REGNUM))
    return 1;


  if (regnum == SPARC64_PC_REGNUM
      || regnum == SPARC64_NPC_REGNUM
      || regnum == SPARC64_STATE_REGNUM
      || regnum == SPARC64_Y_REGNUM
      || regnum == SPARC64_FPRS_REGNUM)
    return 1;

  return 0;
}
