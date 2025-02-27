
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint ;


 int CFLAG_8 (void*) ;
 void* DX ;
 void* EA_AY_DI_8 () ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_X ;
 void* FLAG_Z ;
 void* MASK_OUT_ABOVE_8 (void*) ;
 int NFLAG_8 (void*) ;
 int VFLAG_SUB_8 (void*,void*,void*) ;
 void* m68ki_read_8 (void*) ;
 int m68ki_write_8 (void*,void*) ;

__attribute__((used)) static void m68k_op_sub_8_re_di(void)
{
  uint ea = EA_AY_DI_8();
  uint src = MASK_OUT_ABOVE_8(DX);
  uint dst = m68ki_read_8(ea);
  uint res = dst - src;

  FLAG_N = NFLAG_8(res);
  FLAG_Z = MASK_OUT_ABOVE_8(res);
  FLAG_X = FLAG_C = CFLAG_8(res);
  FLAG_V = VFLAG_SUB_8(src, dst, res);

  m68ki_write_8(ea, FLAG_Z);
}
