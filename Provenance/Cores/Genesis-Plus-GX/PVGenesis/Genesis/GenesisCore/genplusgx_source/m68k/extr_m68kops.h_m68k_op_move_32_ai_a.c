
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int AY ;
 int CFLAG_CLEAR ;
 int EA_AX_AI_32 () ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_Z ;
 int NFLAG_32 (int ) ;
 int VFLAG_CLEAR ;
 int m68ki_write_32 (int ,int ) ;

__attribute__((used)) static void m68k_op_move_32_ai_a(void)
{
  uint res = AY;
  uint ea = EA_AX_AI_32();

  FLAG_N = NFLAG_32(res);
  FLAG_Z = res;
  FLAG_V = VFLAG_CLEAR;
  FLAG_C = CFLAG_CLEAR;

  m68ki_write_32(ea, res);
}
