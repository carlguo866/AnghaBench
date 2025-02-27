
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint ;


 int CFLAG_16 (void*) ;
 void* DX ;
 void* EA_AY_DI_16 () ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_X ;
 void* FLAG_Z ;
 void* MASK_OUT_ABOVE_16 (void*) ;
 int NFLAG_16 (void*) ;
 int VFLAG_SUB_16 (void*,void*,void*) ;
 void* m68ki_read_16 (void*) ;
 int m68ki_write_16 (void*,void*) ;

__attribute__((used)) static void m68k_op_sub_16_re_di(void)
{
  uint ea = EA_AY_DI_16();
  uint src = MASK_OUT_ABOVE_16(DX);
  uint dst = m68ki_read_16(ea);
  uint res = dst - src;

  FLAG_N = NFLAG_16(res);
  FLAG_Z = MASK_OUT_ABOVE_16(res);
  FLAG_X = FLAG_C = CFLAG_16(res);
  FLAG_V = VFLAG_SUB_16(src, dst, res);

  m68ki_write_16(ea, FLAG_Z);
}
