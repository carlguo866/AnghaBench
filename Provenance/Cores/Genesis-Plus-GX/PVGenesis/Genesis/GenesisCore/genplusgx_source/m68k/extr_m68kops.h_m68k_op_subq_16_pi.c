
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CFLAG_16 (int) ;
 int EA_AY_PI_16 () ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_X ;
 int FLAG_Z ;
 int MASK_OUT_ABOVE_16 (int) ;
 int NFLAG_16 (int) ;
 int REG_IR ;
 int VFLAG_SUB_16 (int,int,int) ;
 int m68ki_read_16 (int) ;
 int m68ki_write_16 (int,int ) ;

__attribute__((used)) static void m68k_op_subq_16_pi(void)
{
  uint src = (((REG_IR >> 9) - 1) & 7) + 1;
  uint ea = EA_AY_PI_16();
  uint dst = m68ki_read_16(ea);
  uint res = dst - src;

  FLAG_N = NFLAG_16(res);
  FLAG_Z = MASK_OUT_ABOVE_16(res);
  FLAG_X = FLAG_C = CFLAG_16(res);
  FLAG_V = VFLAG_SUB_16(src, dst, res);

  m68ki_write_16(ea, FLAG_Z);
}
