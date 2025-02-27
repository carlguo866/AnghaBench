
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct lgdt3305_state {TYPE_1__* cfg; } ;
struct dtv_frontend_properties {int modulation; } ;
struct TYPE_2__ {int usref_8vsb; int usref_qam64; int usref_qam256; } ;


 int EINVAL ;
 int LGDT3305_AGC_CTRL_1 ;
 int LGDT3305_AGC_POWER_REF_1 ;
 int LGDT3305_AGC_POWER_REF_2 ;



 int lg_dbg (char*,int) ;
 int lgdt3305_set_reg_bit (struct lgdt3305_state*,int ,int,int) ;
 int lgdt3305_write_reg (struct lgdt3305_state*,int ,int) ;

__attribute__((used)) static int lgdt3305_set_agc_power_ref(struct lgdt3305_state *state,
          struct dtv_frontend_properties *p)
{
 u16 usref = 0;

 switch (p->modulation) {
 case 128:
  if (state->cfg->usref_8vsb)
   usref = state->cfg->usref_8vsb;
  break;
 case 129:
  if (state->cfg->usref_qam64)
   usref = state->cfg->usref_qam64;
  break;
 case 130:
  if (state->cfg->usref_qam256)
   usref = state->cfg->usref_qam256;
  break;
 default:
  return -EINVAL;
 }

 if (usref) {
  lg_dbg("set manual mode: 0x%04x\n", usref);

  lgdt3305_set_reg_bit(state, LGDT3305_AGC_CTRL_1, 3, 1);

  lgdt3305_write_reg(state, LGDT3305_AGC_POWER_REF_1,
       0xff & (usref >> 8));
  lgdt3305_write_reg(state, LGDT3305_AGC_POWER_REF_2,
       0xff & (usref >> 0));
 }
 return 0;
}
