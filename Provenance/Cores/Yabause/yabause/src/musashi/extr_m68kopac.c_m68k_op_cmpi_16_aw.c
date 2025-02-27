
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;


 int CFLAG_16 (scalar_t__) ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_Z ;
 int MASK_OUT_ABOVE_16 (scalar_t__) ;
 int NFLAG_16 (scalar_t__) ;
 scalar_t__ OPER_AW_16 () ;
 scalar_t__ OPER_I_16 () ;
 int VFLAG_SUB_16 (scalar_t__,scalar_t__,scalar_t__) ;

void m68k_op_cmpi_16_aw(void)
{
 uint src = OPER_I_16();
 uint dst = OPER_AW_16();
 uint res = dst - src;

 FLAG_N = NFLAG_16(res);
 FLAG_Z = MASK_OUT_ABOVE_16(res);
 FLAG_V = VFLAG_SUB_16(src, dst, res);
 FLAG_C = CFLAG_16(res);
}
