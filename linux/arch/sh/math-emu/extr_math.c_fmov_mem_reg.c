
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_fpu_soft_struct {int dummy; } ;
struct pt_regs {int dummy; } ;


 int FMOV_EXT (int) ;
 scalar_t__ FPSCR_SZ ;
 int FRn ;
 int READ (int ,scalar_t__) ;
 scalar_t__ Rm ;

__attribute__((used)) static int
fmov_mem_reg(struct sh_fpu_soft_struct *fregs, struct pt_regs *regs, int m,
      int n)
{
 if (FPSCR_SZ) {
  FMOV_EXT(n);
  READ(FRn, Rm + 4);
  n++;
  READ(FRn, Rm);
 } else {
  READ(FRn, Rm);
 }

 return 0;
}
