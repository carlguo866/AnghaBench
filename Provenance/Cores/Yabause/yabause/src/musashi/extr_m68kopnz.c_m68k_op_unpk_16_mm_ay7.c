
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CPU_TYPE ;
 scalar_t__ CPU_TYPE_IS_EC020_PLUS (int ) ;
 int EA_AX_PD_8 () ;
 int OPER_A7_PD_8 () ;
 int OPER_I_16 () ;
 int m68ki_exception_illegal () ;
 int m68ki_write_8 (int,int) ;

void m68k_op_unpk_16_mm_ay7(void)
{
 if(CPU_TYPE_IS_EC020_PLUS(CPU_TYPE))
 {

  uint src = OPER_A7_PD_8();
  uint ea_dst;

  src = (((src << 4) & 0x0f00) | (src & 0x000f)) + OPER_I_16();
  ea_dst = EA_AX_PD_8();
  m68ki_write_8(ea_dst, (src >> 8) & 0xff);
  ea_dst = EA_AX_PD_8();
  m68ki_write_8(ea_dst, src & 0xff);
  return;
 }
 m68ki_exception_illegal();
}
