
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ COND_HI () ;
 int EA_AL_8 () ;
 int m68ki_write_8 (int ,int) ;

__attribute__((used)) static void m68k_op_shi_8_al(void)
{
  m68ki_write_8(EA_AL_8(), COND_HI() ? 0xff : 0);
}
