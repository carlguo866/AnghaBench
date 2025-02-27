
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct dib7000p_state* demodulator_priv; } ;
struct dib7000p_state {scalar_t__ version; } ;


 int DIB7000P_POWER_ALL ;
 int DIBX000_SLOW_ADC_ON ;
 scalar_t__ SOC7090 ;
 int dib7000p_sad_calib (struct dib7000p_state*) ;
 int dib7000p_set_adc_state (struct dib7000p_state*,int ) ;
 int dib7000p_set_power_mode (struct dib7000p_state*,int ) ;

__attribute__((used)) static int dib7000p_wakeup(struct dvb_frontend *demod)
{
 struct dib7000p_state *state = demod->demodulator_priv;
 dib7000p_set_power_mode(state, DIB7000P_POWER_ALL);
 dib7000p_set_adc_state(state, DIBX000_SLOW_ADC_ON);
 if (state->version == SOC7090)
  dib7000p_sad_calib(state);
 return 0;
}
