
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CFLAG_16 (int) ;
 int DX ;
 int DY ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_X ;
 int FLAG_Z ;
 void* MASK_OUT_ABOVE_16 (int) ;
 int MASK_OUT_BELOW_16 (int) ;
 int NFLAG_16 (int) ;
 int VFLAG_ADD_16 (int,int,int) ;

__attribute__((used)) static void m68k_op_add_16_er_d(void)
{
  uint* r_dst = &DX;
  uint src = MASK_OUT_ABOVE_16(DY);
  uint dst = MASK_OUT_ABOVE_16(*r_dst);
  uint res = src + dst;

  FLAG_N = NFLAG_16(res);
  FLAG_V = VFLAG_ADD_16(src, dst, res);
  FLAG_X = FLAG_C = CFLAG_16(res);
  FLAG_Z = MASK_OUT_ABOVE_16(res);

  *r_dst = MASK_OUT_BELOW_16(*r_dst) | FLAG_Z;
}
