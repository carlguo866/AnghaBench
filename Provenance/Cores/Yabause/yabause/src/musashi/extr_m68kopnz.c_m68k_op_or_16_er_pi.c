
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CFLAG_CLEAR ;
 int DX ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_Z ;
 int MASK_OUT_ABOVE_16 (int) ;
 int NFLAG_16 (int ) ;
 int OPER_AY_PI_16 () ;
 int VFLAG_CLEAR ;

void m68k_op_or_16_er_pi(void)
{
 uint res = MASK_OUT_ABOVE_16((DX |= OPER_AY_PI_16()));

 FLAG_N = NFLAG_16(res);
 FLAG_Z = res;
 FLAG_C = CFLAG_CLEAR;
 FLAG_V = VFLAG_CLEAR;
}
