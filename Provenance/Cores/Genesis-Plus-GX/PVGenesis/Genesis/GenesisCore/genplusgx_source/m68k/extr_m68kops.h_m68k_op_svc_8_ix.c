
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ COND_VC () ;
 int EA_AY_IX_8 () ;
 int m68ki_write_8 (int ,int) ;

__attribute__((used)) static void m68k_op_svc_8_ix(void)
{
  m68ki_write_8(EA_AY_IX_8(), COND_VC() ? 0xff : 0);
}
