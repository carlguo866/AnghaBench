
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lgdt3305_state {int current_modulation; TYPE_1__* cfg; } ;
struct dvb_frontend {struct lgdt3305_state* demodulator_priv; } ;
typedef enum fe_status { ____Placeholder_fe_status } fe_status ;
struct TYPE_2__ {int demod_chip; } ;


 int EINVAL ;
 int FE_HAS_CARRIER ;
 int FE_HAS_LOCK ;
 int FE_HAS_SIGNAL ;
 int FE_HAS_SYNC ;
 int FE_HAS_VITERBI ;
 int LGDT3304 ;
 int LGDT3305_GEN_STATUS ;



 int lg_dbg (char*,char*,char*,char*,char*,char*) ;
 scalar_t__ lg_fail (int) ;
 int lgdt3305_read_cr_lock_status (struct lgdt3305_state*,int*) ;
 int lgdt3305_read_fec_lock_status (struct lgdt3305_state*,int*) ;
 int lgdt3305_read_reg (struct lgdt3305_state*,int ,int*) ;

__attribute__((used)) static int lgdt3305_read_status(struct dvb_frontend *fe, enum fe_status *status)
{
 struct lgdt3305_state *state = fe->demodulator_priv;
 u8 val;
 int ret, signal, inlock, nofecerr, snrgood,
  cr_lock, fec_lock, sync_lock;

 *status = 0;

 ret = lgdt3305_read_reg(state, LGDT3305_GEN_STATUS, &val);
 if (lg_fail(ret))
  goto fail;

 signal = (val & (1 << 4)) ? 1 : 0;
 inlock = (val & (1 << 3)) ? 0 : 1;
 sync_lock = (val & (1 << 2)) ? 1 : 0;
 nofecerr = (val & (1 << 1)) ? 1 : 0;
 snrgood = (val & (1 << 0)) ? 1 : 0;

 lg_dbg("%s%s%s%s%s\n",
        signal ? "SIGNALEXIST " : "",
        inlock ? "INLOCK " : "",
        sync_lock ? "SYNCLOCK " : "",
        nofecerr ? "NOFECERR " : "",
        snrgood ? "SNRGOOD " : "");

 ret = lgdt3305_read_cr_lock_status(state, &cr_lock);
 if (lg_fail(ret))
  goto fail;

 if (signal)
  *status |= FE_HAS_SIGNAL;
 if (cr_lock)
  *status |= FE_HAS_CARRIER;
 if (nofecerr)
  *status |= FE_HAS_VITERBI;
 if (sync_lock)
  *status |= FE_HAS_SYNC;

 switch (state->current_modulation) {
 case 130:
 case 129:

  if (((LGDT3304 == state->cfg->demod_chip)) && (cr_lock))
   *status |= FE_HAS_SIGNAL;

  ret = lgdt3305_read_fec_lock_status(state, &fec_lock);
  if (lg_fail(ret))
   goto fail;

  if (fec_lock)
   *status |= FE_HAS_LOCK;
  break;
 case 128:
  if (inlock)
   *status |= FE_HAS_LOCK;
  break;
 default:
  ret = -EINVAL;
 }
fail:
 return ret;
}
