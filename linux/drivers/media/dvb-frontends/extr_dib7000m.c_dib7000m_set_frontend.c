
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* set_params ) (struct dvb_frontend*) ;} ;
struct TYPE_4__ {TYPE_1__ tuner_ops; } ;
struct dtv_frontend_properties {scalar_t__ transmission_mode; scalar_t__ guard_interval; scalar_t__ modulation; scalar_t__ code_rate_HP; int bandwidth_hz; } ;
struct dvb_frontend {TYPE_2__ ops; struct dib7000m_state* demodulator_priv; struct dtv_frontend_properties dtv_property_cache; } ;
struct dib7000m_state {scalar_t__ agc_state; } ;


 int BANDWIDTH_TO_KHZ (int ) ;
 scalar_t__ FEC_AUTO ;
 scalar_t__ GUARD_INTERVAL_AUTO ;
 int OUTMODE_HIGH_Z ;
 int OUTMODE_MPEG2_FIFO ;
 scalar_t__ QAM_AUTO ;
 scalar_t__ TRANSMISSION_MODE_AUTO ;
 int dib7000m_agc_startup (struct dvb_frontend*) ;
 int dib7000m_autosearch_is_irq (struct dvb_frontend*) ;
 int dib7000m_autosearch_start (struct dvb_frontend*) ;
 int dib7000m_get_frontend (struct dvb_frontend*,struct dtv_frontend_properties*) ;
 int dib7000m_set_bandwidth (struct dib7000m_state*,int ) ;
 int dib7000m_set_output_mode (struct dib7000m_state*,int ) ;
 int dib7000m_tune (struct dvb_frontend*) ;
 int dprintk (char*,int) ;
 int msleep (int) ;
 int stub1 (struct dvb_frontend*) ;

__attribute__((used)) static int dib7000m_set_frontend(struct dvb_frontend *fe)
{
 struct dtv_frontend_properties *fep = &fe->dtv_property_cache;
 struct dib7000m_state *state = fe->demodulator_priv;
 int time, ret;

 dib7000m_set_output_mode(state, OUTMODE_HIGH_Z);

 dib7000m_set_bandwidth(state, BANDWIDTH_TO_KHZ(fep->bandwidth_hz));

 if (fe->ops.tuner_ops.set_params)
  fe->ops.tuner_ops.set_params(fe);


 state->agc_state = 0;
 do {
  time = dib7000m_agc_startup(fe);
  if (time != -1)
   msleep(time);
 } while (time != -1);

 if (fep->transmission_mode == TRANSMISSION_MODE_AUTO ||
  fep->guard_interval == GUARD_INTERVAL_AUTO ||
  fep->modulation == QAM_AUTO ||
  fep->code_rate_HP == FEC_AUTO) {
  int i = 800, found;

  dib7000m_autosearch_start(fe);
  do {
   msleep(1);
   found = dib7000m_autosearch_is_irq(fe);
  } while (found == 0 && i--);

  dprintk("autosearch returns: %d\n", found);
  if (found == 0 || found == 1)
   return 0;

  dib7000m_get_frontend(fe, fep);
 }

 ret = dib7000m_tune(fe);


 dib7000m_set_output_mode(state, OUTMODE_MPEG2_FIFO);
 return ret;
}
