
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;


 scalar_t__ AX ;
 scalar_t__ MASK_OUT_ABOVE_32 (scalar_t__) ;
 scalar_t__ OPER_AY_DI_32 () ;

__attribute__((used)) static void m68k_op_adda_32_di(void)
{
  uint* r_dst = &AX;

  *r_dst = MASK_OUT_ABOVE_32(OPER_AY_DI_32() + *r_dst);
}
