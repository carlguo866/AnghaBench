
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stv {int dummy; } ;
struct TYPE_3__ {TYPE_2__* stat; } ;
struct dtv_frontend_properties {TYPE_1__ cnr; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; struct stv* demodulator_priv; } ;
typedef int s32 ;
struct TYPE_4__ {int svalue; int scale; } ;


 int FE_SCALE_DECIBEL ;
 int FE_SCALE_NOT_AVAILABLE ;
 int get_signal_to_noise (struct stv*,int*) ;

__attribute__((used)) static int read_snr(struct dvb_frontend *fe)
{
 struct stv *state = fe->demodulator_priv;
 struct dtv_frontend_properties *p = &fe->dtv_property_cache;
 s32 snrval;

 if (!get_signal_to_noise(state, &snrval)) {
  p->cnr.stat[0].scale = FE_SCALE_DECIBEL;
  p->cnr.stat[0].svalue = 100 * snrval;
 } else {
  p->cnr.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
 }

 return 0;
}
