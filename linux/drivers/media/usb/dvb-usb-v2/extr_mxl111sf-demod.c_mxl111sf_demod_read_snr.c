
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mxl111sf_demod_state {int dummy; } ;
struct dvb_frontend {struct mxl111sf_demod_state* demodulator_priv; } ;


 int mxl111sf_demod_calc_snr (struct mxl111sf_demod_state*,int*) ;
 scalar_t__ mxl_fail (int) ;

__attribute__((used)) static int mxl111sf_demod_read_snr(struct dvb_frontend *fe, u16 *snr)
{
 struct mxl111sf_demod_state *state = fe->demodulator_priv;

 int ret = mxl111sf_demod_calc_snr(state, snr);
 if (mxl_fail(ret))
  goto fail;

 *snr /= 10;
fail:
 return ret;
}
