
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stb0899_state {int dummy; } ;


 int CSM_AUTO_PARAM ;
 int CSM_CNTRL1 ;
 int STB0899_BASE_CSM_CNTRL1 ;
 int STB0899_OFF0_CSM_CNTRL1 ;
 int STB0899_READ_S2REG (int ,int ) ;
 int STB0899_S2DEMOD ;
 int STB0899_SETFIELD_VAL (int ,int ,int) ;
 int stb0899_write_s2reg (struct stb0899_state*,int ,int ,int ,int ) ;

__attribute__((used)) static void stb0899_dvbs2_config_csm_auto(struct stb0899_state *state)
{
 u32 reg;

 reg = STB0899_READ_S2REG(STB0899_S2DEMOD, CSM_CNTRL1);
 STB0899_SETFIELD_VAL(CSM_AUTO_PARAM, reg, 1);
 stb0899_write_s2reg(state, STB0899_S2DEMOD, STB0899_BASE_CSM_CNTRL1, STB0899_OFF0_CSM_CNTRL1, reg);
}
