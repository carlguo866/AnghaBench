
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CFLAG_CLEAR ;
 scalar_t__ DY ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_Z ;
 int NFLAG_CLEAR ;
 int VFLAG_CLEAR ;
 int ZFLAG_SET ;

void m68k_op_clr_32_d(void)
{
 DY = 0;

 FLAG_N = NFLAG_CLEAR;
 FLAG_V = VFLAG_CLEAR;
 FLAG_C = CFLAG_CLEAR;
 FLAG_Z = ZFLAG_SET;
}
