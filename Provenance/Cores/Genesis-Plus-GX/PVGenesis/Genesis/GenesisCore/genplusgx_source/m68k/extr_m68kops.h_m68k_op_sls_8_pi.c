
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ COND_LS () ;
 int EA_AY_PI_8 () ;
 int m68ki_write_8 (int ,int) ;

__attribute__((used)) static void m68k_op_sls_8_pi(void)
{
  m68ki_write_8(EA_AY_PI_8(), COND_LS() ? 0xff : 0);
}
