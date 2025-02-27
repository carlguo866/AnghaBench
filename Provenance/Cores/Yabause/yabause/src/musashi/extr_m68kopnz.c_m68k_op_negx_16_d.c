
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CFLAG_16 (int) ;
 int DY ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_X ;
 int FLAG_Z ;
 int MASK_OUT_ABOVE_16 (int) ;
 int MASK_OUT_BELOW_16 (int) ;
 int NFLAG_16 (int) ;
 int XFLAG_AS_1 () ;

void m68k_op_negx_16_d(void)
{
 uint* r_dst = &DY;
 uint res = 0 - MASK_OUT_ABOVE_16(*r_dst) - XFLAG_AS_1();

 FLAG_N = NFLAG_16(res);
 FLAG_X = FLAG_C = CFLAG_16(res);
 FLAG_V = (*r_dst & res)>>8;

 res = MASK_OUT_ABOVE_16(res);
 FLAG_Z |= res;

 *r_dst = MASK_OUT_BELOW_16(*r_dst) | res;
}
