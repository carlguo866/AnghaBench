
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CFLAG_CLEAR ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_Z ;
 int NFLAG_16 (int ) ;
 int OPER_AY_PD_16 () ;
 int VFLAG_CLEAR ;

__attribute__((used)) static void m68k_op_tst_16_pd(void)
{
  uint res = OPER_AY_PD_16();

  FLAG_N = NFLAG_16(res);
  FLAG_Z = res;
  FLAG_V = VFLAG_CLEAR;
  FLAG_C = CFLAG_CLEAR;
}
