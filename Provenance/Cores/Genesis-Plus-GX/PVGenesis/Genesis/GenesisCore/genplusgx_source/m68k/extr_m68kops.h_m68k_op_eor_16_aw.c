
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CFLAG_CLEAR ;
 int DX ;
 int EA_AW_16 () ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_Z ;
 int MASK_OUT_ABOVE_16 (int) ;
 int NFLAG_16 (int ) ;
 int VFLAG_CLEAR ;
 int m68ki_read_16 (int ) ;
 int m68ki_write_16 (int ,int ) ;

__attribute__((used)) static void m68k_op_eor_16_aw(void)
{
  uint ea = EA_AW_16();
  uint res = MASK_OUT_ABOVE_16(DX ^ m68ki_read_16(ea));

  m68ki_write_16(ea, res);

  FLAG_N = NFLAG_16(res);
  FLAG_Z = res;
  FLAG_C = CFLAG_CLEAR;
  FLAG_V = VFLAG_CLEAR;
}
