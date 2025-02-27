
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CYC_MOVEM_L ;
 int EA_AY_AI_32 () ;
 int OPER_I_16 () ;
 int * REG_DA ;
 int USE_CYCLES (int) ;
 int m68ki_write_32 (int,int ) ;

__attribute__((used)) static void m68k_op_movem_32_re_ai(void)
{
  uint i = 0;
  uint register_list = OPER_I_16();
  uint ea = EA_AY_AI_32();
  uint count = 0;

  for(; i < 16; i++)
    if(register_list & (1 << i))
    {
      m68ki_write_32(ea, REG_DA[i]);
      ea += 4;
      count++;
    }

  USE_CYCLES(count * CYC_MOVEM_L);
}
