
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ COND_MI () ;
 int EA_A7_PD_8 () ;
 int m68ki_write_8 (int ,int) ;

__attribute__((used)) static void m68k_op_smi_8_pd7(void)
{
  m68ki_write_8(EA_A7_PD_8(), COND_MI() ? 0xff : 0);
}
