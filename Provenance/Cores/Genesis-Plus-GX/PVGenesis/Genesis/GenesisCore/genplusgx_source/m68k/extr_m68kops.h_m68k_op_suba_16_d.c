
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;


 scalar_t__ AX ;
 int DY ;
 scalar_t__ MAKE_INT_16 (int ) ;
 scalar_t__ MASK_OUT_ABOVE_32 (scalar_t__) ;

__attribute__((used)) static void m68k_op_suba_16_d(void)
{
  uint* r_dst = &AX;

  *r_dst = MASK_OUT_ABOVE_32(*r_dst - MAKE_INT_16(DY));
}
