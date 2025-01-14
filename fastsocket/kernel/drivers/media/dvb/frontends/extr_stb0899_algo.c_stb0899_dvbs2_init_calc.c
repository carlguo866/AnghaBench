
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stb0899_internal {int srate; int srch_range; int step_size; int master_clk; scalar_t__ center_freq; } ;
struct stb0899_state {struct stb0899_internal internal; } ;
typedef int s32 ;


 int ACQ_CNTRL2 ;
 int FREQ_STEPSIZE ;
 int NUM_STEPS ;
 int STB0899_BASE_ACQ_CNTRL2 ;
 int STB0899_OFF0_ACQ_CNTRL2 ;
 int STB0899_READ_S2REG (int ,int ) ;
 int STB0899_S2DEMOD ;
 int STB0899_SETFIELD_VAL (int ,int,int) ;
 int ZIGZAG ;
 int stb0899_dvbs2_config_csm_auto (struct stb0899_state*) ;
 int stb0899_dvbs2_config_uwp (struct stb0899_state*) ;
 int stb0899_dvbs2_set_btr_loopbw (struct stb0899_state*) ;
 int stb0899_dvbs2_set_carr_freq (struct stb0899_state*,scalar_t__,int) ;
 int stb0899_dvbs2_set_srate (struct stb0899_state*) ;
 int stb0899_write_s2reg (struct stb0899_state*,int ,int ,int ,int) ;

__attribute__((used)) static void stb0899_dvbs2_init_calc(struct stb0899_state *state)
{
 struct stb0899_internal *internal = &state->internal;
 s32 steps, step_size;
 u32 range, reg;


 stb0899_dvbs2_config_uwp(state);
 stb0899_dvbs2_config_csm_auto(state);


 stb0899_dvbs2_set_srate(state);
 stb0899_dvbs2_set_btr_loopbw(state);

 if (internal->srate / 1000000 >= 15)
  step_size = (1 << 17) / 5;
 else if (internal->srate / 1000000 >= 10)
  step_size = (1 << 17) / 7;
 else if (internal->srate / 1000000 >= 5)
  step_size = (1 << 17) / 10;
 else
  step_size = (1 << 17) / 4;

 range = internal->srch_range / 1000000;
 steps = (10 * range * (1 << 17)) / (step_size * (internal->srate / 1000000));
 steps = (steps + 6) / 10;
 steps = (steps == 0) ? 1 : steps;
 if (steps % 2 == 0)
  stb0899_dvbs2_set_carr_freq(state, internal->center_freq -
        (internal->step_size * (internal->srate / 20000000)),
        (internal->master_clk) / 1000000);
 else
  stb0899_dvbs2_set_carr_freq(state, internal->center_freq, (internal->master_clk) / 1000000);


 reg = STB0899_READ_S2REG(STB0899_S2DEMOD, ACQ_CNTRL2);
 STB0899_SETFIELD_VAL(ZIGZAG, reg, 1);
 STB0899_SETFIELD_VAL(NUM_STEPS, reg, steps);
 STB0899_SETFIELD_VAL(FREQ_STEPSIZE, reg, step_size);
 stb0899_write_s2reg(state, STB0899_S2DEMOD, STB0899_BASE_ACQ_CNTRL2, STB0899_OFF0_ACQ_CNTRL2, reg);
}
