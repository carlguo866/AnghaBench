
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CPU_TYPE ;
 scalar_t__ CPU_TYPE_IS_EC020_PLUS (int ) ;
 int DX ;
 int DY ;
 int MASK_OUT_BELOW_8 (int) ;
 int OPER_I_16 () ;
 int m68ki_exception_illegal () ;

void m68k_op_pack_16_rr(void)
{
 if(CPU_TYPE_IS_EC020_PLUS(CPU_TYPE))
 {

  uint src = DY + OPER_I_16();
  uint* r_dst = &DX;

  *r_dst = MASK_OUT_BELOW_8(*r_dst) | ((src >> 4) & 0x00f0) | (src & 0x000f);
  return;
 }
 m68ki_exception_illegal();
}
