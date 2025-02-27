
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int EA_A7_PD_8 () ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_X ;
 int FLAG_Z ;
 scalar_t__ HIGH_NIBBLE (int) ;
 int LOW_NIBBLE (int) ;
 int MASK_OUT_ABOVE_8 (int) ;
 int NFLAG_8 (int) ;
 int OPER_A7_PD_8 () ;
 int XFLAG_AS_1 () ;
 int m68ki_read_8 (int) ;
 int m68ki_write_8 (int,int) ;

__attribute__((used)) static void m68k_op_abcd_8_mm_axy7(void)
{
  uint src = OPER_A7_PD_8();
  uint ea = EA_A7_PD_8();
  uint dst = m68ki_read_8(ea);
  uint res = LOW_NIBBLE(src) + LOW_NIBBLE(dst) + XFLAG_AS_1();

  FLAG_V = ~res;

  if(res > 9)
    res += 6;
  res += HIGH_NIBBLE(src) + HIGH_NIBBLE(dst);
  FLAG_X = FLAG_C = (res > 0x99) << 8;
  if(FLAG_C)
    res -= 0xa0;

  FLAG_V &= res;
  FLAG_N = NFLAG_8(res);

  res = MASK_OUT_ABOVE_8(res);
  FLAG_Z |= res;

  m68ki_write_8(ea, res);
}
