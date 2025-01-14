
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtv_frontend_properties {scalar_t__ lna; } ;
struct dvb_frontend {struct drx39xxj_state* demodulator_priv; struct dtv_frontend_properties dtv_property_cache; } ;
struct drxj_data {int has_lna; } ;
struct drx_demod_instance {struct drxj_data* my_ext_attr; } ;
struct drx39xxj_state {struct drx_demod_instance* demod; } ;


 int EINVAL ;
 int drxj_set_lna_state (struct drx_demod_instance*,scalar_t__) ;
 int pr_err (char*) ;

__attribute__((used)) static int drx39xxj_set_lna(struct dvb_frontend *fe)
{
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;
 struct drx39xxj_state *state = fe->demodulator_priv;
 struct drx_demod_instance *demod = state->demod;
 struct drxj_data *ext_attr = demod->my_ext_attr;

 if (c->lna) {
  if (!ext_attr->has_lna) {
   pr_err("LNA is not supported on this device!\n");
   return -EINVAL;

  }
 }

 return drxj_set_lna_state(demod, c->lna);
}
