
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ COND_EQ () ;
 int EA_AY_IX_8 () ;
 int m68ki_write_8 (int ,int) ;

void m68k_op_seq_8_ix(void)
{
 m68ki_write_8(EA_AY_IX_8(), COND_EQ() ? 0xff : 0);
}
