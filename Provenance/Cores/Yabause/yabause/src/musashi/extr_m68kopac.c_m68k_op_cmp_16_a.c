
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint ;


 void* AY ;
 int CFLAG_16 (void*) ;
 void* DX ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 void* FLAG_Z ;
 void* MASK_OUT_ABOVE_16 (void*) ;
 int NFLAG_16 (void*) ;
 int VFLAG_SUB_16 (void*,void*,void*) ;

void m68k_op_cmp_16_a(void)
{
 uint src = MASK_OUT_ABOVE_16(AY);
 uint dst = MASK_OUT_ABOVE_16(DX);
 uint res = dst - src;

 FLAG_N = NFLAG_16(res);
 FLAG_Z = MASK_OUT_ABOVE_16(res);
 FLAG_V = VFLAG_SUB_16(src, dst, res);
 FLAG_C = CFLAG_16(res);
}
