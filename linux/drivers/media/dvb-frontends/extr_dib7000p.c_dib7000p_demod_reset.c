
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tuner_is_baseband; } ;
struct dib7000p_state {scalar_t__ version; TYPE_1__ cfg; int i2c_master; } ;


 int DIB7000P_POWER_ALL ;
 int DIB7000P_POWER_INTERFACE_ONLY ;
 int DIBX000_SLOW_ADC_OFF ;
 int DIBX000_SLOW_ADC_ON ;
 int DIBX000_VBG_ENABLE ;
 int OUTMODE_HIGH_Z ;
 scalar_t__ SOC7090 ;
 int dib7000p_defaults ;
 int dib7000p_read_word (struct dib7000p_state*,int) ;
 scalar_t__ dib7000p_reset_gpio (struct dib7000p_state*) ;
 int dib7000p_reset_pll (struct dib7000p_state*) ;
 int dib7000p_sad_calib (struct dib7000p_state*) ;
 int dib7000p_set_adc_state (struct dib7000p_state*,int ) ;
 int dib7000p_set_bandwidth (struct dib7000p_state*,int) ;
 scalar_t__ dib7000p_set_output_mode (struct dib7000p_state*,int ) ;
 int dib7000p_set_power_mode (struct dib7000p_state*,int ) ;
 int dib7000p_write_tab (struct dib7000p_state*,int ) ;
 int dib7000p_write_word (struct dib7000p_state*,int,int) ;
 int dibx000_reset_i2c_master (int *) ;
 int dprintk (char*) ;

__attribute__((used)) static int dib7000p_demod_reset(struct dib7000p_state *state)
{
 dib7000p_set_power_mode(state, DIB7000P_POWER_ALL);

 if (state->version == SOC7090)
  dibx000_reset_i2c_master(&state->i2c_master);

 dib7000p_set_adc_state(state, DIBX000_VBG_ENABLE);


 dib7000p_write_word(state, 770, 0xffff);
 dib7000p_write_word(state, 771, 0xffff);
 dib7000p_write_word(state, 772, 0x001f);
 dib7000p_write_word(state, 1280, 0x001f - ((1 << 4) | (1 << 3)));

 dib7000p_write_word(state, 770, 0);
 dib7000p_write_word(state, 771, 0);
 dib7000p_write_word(state, 772, 0);
 dib7000p_write_word(state, 1280, 0);

 if (state->version != SOC7090) {
  dib7000p_write_word(state, 898, 0x0003);
  dib7000p_write_word(state, 898, 0);
 }


 dib7000p_reset_pll(state);

 if (dib7000p_reset_gpio(state) != 0)
  dprintk("GPIO reset was not successful.\n");

 if (state->version == SOC7090) {
  dib7000p_write_word(state, 899, 0);


  dib7000p_write_word(state, 42, (1<<5) | 3);
  dib7000p_write_word(state, 43, 0x2d4);
  dib7000p_write_word(state, 44, 300);
  dib7000p_write_word(state, 273, (0<<6) | 30);
 }
 if (dib7000p_set_output_mode(state, OUTMODE_HIGH_Z) != 0)
  dprintk("OUTPUT_MODE could not be reset.\n");

 dib7000p_set_adc_state(state, DIBX000_SLOW_ADC_ON);
 dib7000p_sad_calib(state);
 dib7000p_set_adc_state(state, DIBX000_SLOW_ADC_OFF);


 dib7000p_write_word(state, 1285, dib7000p_read_word(state, 1285) & ~(1 << 1));

 dib7000p_set_bandwidth(state, 8000);

 if (state->version == SOC7090) {
  dib7000p_write_word(state, 36, 0x0755);
 } else {
  if (state->cfg.tuner_is_baseband)
   dib7000p_write_word(state, 36, 0x0755);
  else
   dib7000p_write_word(state, 36, 0x1f55);
 }

 dib7000p_write_tab(state, dib7000p_defaults);
 if (state->version != SOC7090) {
  dib7000p_write_word(state, 901, 0x0006);
  dib7000p_write_word(state, 902, (3 << 10) | (1 << 6));
  dib7000p_write_word(state, 905, 0x2c8e);
 }

 dib7000p_set_power_mode(state, DIB7000P_POWER_INTERFACE_ONLY);

 return 0;
}
