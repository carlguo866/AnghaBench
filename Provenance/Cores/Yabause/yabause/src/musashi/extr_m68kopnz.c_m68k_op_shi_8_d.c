
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ COND_HI () ;
 int CYC_SCC_R_TRUE ;
 int DY ;
 int USE_CYCLES (int ) ;

void m68k_op_shi_8_d(void)
{
 if(COND_HI())
 {
  DY |= 0xff;
  USE_CYCLES(CYC_SCC_R_TRUE);
  return;
 }
 DY &= 0xffffff00;
}
