
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint ;


 int CFLAG_8 (void*) ;
 void* DY ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 void* FLAG_Z ;
 void* MASK_OUT_ABOVE_8 (void*) ;
 int NFLAG_8 (void*) ;
 void* OPER_I_8 () ;
 int VFLAG_SUB_8 (void*,void*,void*) ;

void m68k_op_cmpi_8_d(void)
{
 uint src = OPER_I_8();
 uint dst = MASK_OUT_ABOVE_8(DY);
 uint res = dst - src;

 FLAG_N = NFLAG_8(res);
 FLAG_Z = MASK_OUT_ABOVE_8(res);
 FLAG_V = VFLAG_SUB_8(src, dst, res);
 FLAG_C = CFLAG_8(res);
}
