
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CFLAG_8 (int) ;
 int DX ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_X ;
 int FLAG_Z ;
 void* MASK_OUT_ABOVE_8 (int) ;
 int MASK_OUT_BELOW_8 (int) ;
 int NFLAG_8 (int) ;
 int OPER_PCDI_8 () ;
 int VFLAG_ADD_8 (int,int,int) ;

void m68k_op_add_8_er_pcdi(void)
{
 uint* r_dst = &DX;
 uint src = OPER_PCDI_8();
 uint dst = MASK_OUT_ABOVE_8(*r_dst);
 uint res = src + dst;

 FLAG_N = NFLAG_8(res);
 FLAG_V = VFLAG_ADD_8(src, dst, res);
 FLAG_X = FLAG_C = CFLAG_8(res);
 FLAG_Z = MASK_OUT_ABOVE_8(res);

 *r_dst = MASK_OUT_BELOW_8(*r_dst) | FLAG_Z;
}
