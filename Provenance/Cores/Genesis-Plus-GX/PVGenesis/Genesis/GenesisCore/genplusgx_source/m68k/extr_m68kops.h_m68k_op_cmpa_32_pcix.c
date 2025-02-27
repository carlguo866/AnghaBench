
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;


 scalar_t__ AX ;
 int CFLAG_SUB_32 (scalar_t__,scalar_t__,scalar_t__) ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_Z ;
 int MASK_OUT_ABOVE_32 (scalar_t__) ;
 int NFLAG_32 (scalar_t__) ;
 scalar_t__ OPER_PCIX_32 () ;
 int VFLAG_SUB_32 (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void m68k_op_cmpa_32_pcix(void)
{
  uint src = OPER_PCIX_32();
  uint dst = AX;
  uint res = dst - src;

  FLAG_N = NFLAG_32(res);
  FLAG_Z = MASK_OUT_ABOVE_32(res);
  FLAG_V = VFLAG_SUB_32(src, dst, res);
  FLAG_C = CFLAG_SUB_32(src, dst, res);
}
