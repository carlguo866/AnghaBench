
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct dvb_frontend {int dummy; } ;
struct stv090x_state {int delsys; scalar_t__ search_mode; int rolloff; scalar_t__ algo; int srate; int DemodTimeout; TYPE_2__* internal; scalar_t__ tuner_bw; TYPE_1__* config; int modulation; int demod_mode; int frame_len; int fec; struct dvb_frontend frontend; } ;
typedef int s32 ;
typedef enum stv090x_modcod { ____Placeholder_stv090x_modcod } stv090x_modcod ;
struct TYPE_4__ {int dev_ver; int mclk; } ;
struct TYPE_3__ {scalar_t__ (* tuner_set_bandwidth ) (struct dvb_frontend*,scalar_t__) ;} ;


 int ACLC ;
 int ACLC2S216A ;
 int ACLC2S232A ;
 int ACLC2S28 ;
 int ACLC2S2Q ;
 int AGC2REF ;
 int BCLC ;
 int CARFREQ ;
 int CCIR0 ;
 int CFR1 ;
 int CFR2 ;
 int CFRINIT0 ;
 int CFRINIT1 ;
 int CFR_AUTOSCAN_FIELD ;
 int DEMOD ;
 int DEMOD_MODCOD_FIELD ;
 int DEMOD_TYPE_FIELD ;
 int DMDCFGMD ;
 int DMDISTATE ;
 int DMDMODCOD ;
 int DVBS1_ENABLE_FIELD ;
 int DVBS2_ENABLE_FIELD ;
 int ERRCTRL1 ;
 int FE_ERROR ;
 int GAUSSR0 ;
 int MANUAL_SXROLLOFF_FIELD ;
 int ROLLOFF_CONTROL_FIELD ;
 int SCAN_ENABLE_FIELD ;
 int SFRLOW1 ;
 int SFRSTEP ;
 int SFRUP1 ;
 int STV090x_16APSK ;
 int STV090x_16APSK_910 ;
 int STV090x_32APSK ;
 int STV090x_8PSK ;
 int STV090x_8PSK_910 ;
 scalar_t__ STV090x_BLIND_SEARCH ;




 int STV090x_GETFIELD_Px (int,int ) ;
 int STV090x_LONG_FRAME ;
 int STV090x_PR12 ;
 int STV090x_QPSK ;
 int STV090x_QPSK_910 ;
 int STV090x_READ_DEMOD (struct stv090x_state*,int ) ;
 scalar_t__ STV090x_SEARCH_AUTO ;
 scalar_t__ STV090x_SEARCH_DSS ;
 scalar_t__ STV090x_SEARCH_DVBS1 ;
 int STV090x_SETFIELD_Px (int,int ,int) ;
 int STV090x_SINGLE ;
 scalar_t__ STV090x_WARM_SEARCH ;
 scalar_t__ STV090x_WRITE_DEMOD (struct stv090x_state*,int ,int) ;
 int TMGCFG2 ;
 int TMGOBS ;
 int VAVSRVIT ;
 int VITSCALE ;
 int dprintk (int ,int,char*) ;
 int msleep (int) ;
 scalar_t__ stub1 (struct dvb_frontend*,scalar_t__) ;
 scalar_t__ stv090x_car_width (int,int) ;
 scalar_t__ stv090x_dvbs_track_crl (struct stv090x_state*) ;
 int stv090x_get_dmdlock (struct stv090x_state*,int) ;
 int stv090x_get_lock_tmg (struct stv090x_state*) ;
 int stv090x_get_srate (struct stv090x_state*,int ) ;
 scalar_t__ stv090x_get_tmgoffst (struct stv090x_state*,int) ;
 int stv090x_get_viterbi (struct stv090x_state*) ;
 scalar_t__ stv090x_i2c_gate_ctrl (struct stv090x_state*,int) ;
 int stv090x_optimize_carloop (struct stv090x_state*,int,int) ;
 int stv090x_optimize_carloop_short (struct stv090x_state*) ;
 scalar_t__ stv090x_set_srate (struct stv090x_state*,int) ;
 int stv090x_set_vit_thtracq (struct stv090x_state*) ;

__attribute__((used)) static int stv090x_optimize_track(struct stv090x_state *state)
{
 struct dvb_frontend *fe = &state->frontend;

 enum stv090x_modcod modcod;

 s32 srate, pilots, aclc, f_1, f_0, i = 0, blind_tune = 0;
 u32 reg;

 srate = stv090x_get_srate(state, state->internal->mclk);
 srate += stv090x_get_tmgoffst(state, srate);

 switch (state->delsys) {
 case 130:
 case 131:
  if (state->search_mode == STV090x_SEARCH_AUTO) {
   reg = STV090x_READ_DEMOD(state, DMDCFGMD);
   STV090x_SETFIELD_Px(reg, DVBS1_ENABLE_FIELD, 1);
   STV090x_SETFIELD_Px(reg, DVBS2_ENABLE_FIELD, 0);
   if (STV090x_WRITE_DEMOD(state, DMDCFGMD, reg) < 0)
    goto err;
  }
  reg = STV090x_READ_DEMOD(state, DEMOD);
  STV090x_SETFIELD_Px(reg, ROLLOFF_CONTROL_FIELD, state->rolloff);
  STV090x_SETFIELD_Px(reg, MANUAL_SXROLLOFF_FIELD, 0x01);
  if (STV090x_WRITE_DEMOD(state, DEMOD, reg) < 0)
   goto err;

  if (state->internal->dev_ver >= 0x30) {
   if (stv090x_get_viterbi(state) < 0)
    goto err;

   if (state->fec == STV090x_PR12) {
    if (STV090x_WRITE_DEMOD(state, GAUSSR0, 0x98) < 0)
     goto err;
    if (STV090x_WRITE_DEMOD(state, CCIR0, 0x18) < 0)
     goto err;
   } else {
    if (STV090x_WRITE_DEMOD(state, GAUSSR0, 0x18) < 0)
     goto err;
    if (STV090x_WRITE_DEMOD(state, CCIR0, 0x18) < 0)
     goto err;
   }
  }

  if (STV090x_WRITE_DEMOD(state, ERRCTRL1, 0x75) < 0)
   goto err;
  break;

 case 129:
  reg = STV090x_READ_DEMOD(state, DMDCFGMD);
  STV090x_SETFIELD_Px(reg, DVBS1_ENABLE_FIELD, 0);
  STV090x_SETFIELD_Px(reg, DVBS2_ENABLE_FIELD, 1);
  if (STV090x_WRITE_DEMOD(state, DMDCFGMD, reg) < 0)
   goto err;
  if (state->internal->dev_ver >= 0x30) {
   if (STV090x_WRITE_DEMOD(state, ACLC, 0) < 0)
    goto err;
   if (STV090x_WRITE_DEMOD(state, BCLC, 0) < 0)
    goto err;
  }
  if (state->frame_len == STV090x_LONG_FRAME) {
   reg = STV090x_READ_DEMOD(state, DMDMODCOD);
   modcod = STV090x_GETFIELD_Px(reg, DEMOD_MODCOD_FIELD);
   pilots = STV090x_GETFIELD_Px(reg, DEMOD_TYPE_FIELD) & 0x01;
   aclc = stv090x_optimize_carloop(state, modcod, pilots);
   if (modcod <= STV090x_QPSK_910) {
    STV090x_WRITE_DEMOD(state, ACLC2S2Q, aclc);
   } else if (modcod <= STV090x_8PSK_910) {
    if (STV090x_WRITE_DEMOD(state, ACLC2S2Q, 0x2a) < 0)
     goto err;
    if (STV090x_WRITE_DEMOD(state, ACLC2S28, aclc) < 0)
     goto err;
   }
   if ((state->demod_mode == STV090x_SINGLE) && (modcod > STV090x_8PSK_910)) {
    if (modcod <= STV090x_16APSK_910) {
     if (STV090x_WRITE_DEMOD(state, ACLC2S2Q, 0x2a) < 0)
      goto err;
     if (STV090x_WRITE_DEMOD(state, ACLC2S216A, aclc) < 0)
      goto err;
    } else {
     if (STV090x_WRITE_DEMOD(state, ACLC2S2Q, 0x2a) < 0)
      goto err;
     if (STV090x_WRITE_DEMOD(state, ACLC2S232A, aclc) < 0)
      goto err;
    }
   }
  } else {

   aclc = stv090x_optimize_carloop_short(state);
   if (state->modulation == STV090x_QPSK) {
    if (STV090x_WRITE_DEMOD(state, ACLC2S2Q, aclc) < 0)
     goto err;
   } else if (state->modulation == STV090x_8PSK) {
    if (STV090x_WRITE_DEMOD(state, ACLC2S2Q, 0x2a) < 0)
     goto err;
    if (STV090x_WRITE_DEMOD(state, ACLC2S28, aclc) < 0)
     goto err;
   } else if (state->modulation == STV090x_16APSK) {
    if (STV090x_WRITE_DEMOD(state, ACLC2S2Q, 0x2a) < 0)
     goto err;
    if (STV090x_WRITE_DEMOD(state, ACLC2S216A, aclc) < 0)
     goto err;
   } else if (state->modulation == STV090x_32APSK) {
    if (STV090x_WRITE_DEMOD(state, ACLC2S2Q, 0x2a) < 0)
     goto err;
    if (STV090x_WRITE_DEMOD(state, ACLC2S232A, aclc) < 0)
     goto err;
   }
  }

  STV090x_WRITE_DEMOD(state, ERRCTRL1, 0x67);
  break;

 case 128:
 default:
  reg = STV090x_READ_DEMOD(state, DMDCFGMD);
  STV090x_SETFIELD_Px(reg, DVBS1_ENABLE_FIELD, 1);
  STV090x_SETFIELD_Px(reg, DVBS2_ENABLE_FIELD, 1);
  if (STV090x_WRITE_DEMOD(state, DMDCFGMD, reg) < 0)
   goto err;
  break;
 }

 f_1 = STV090x_READ_DEMOD(state, CFR2);
 f_0 = STV090x_READ_DEMOD(state, CFR1);
 reg = STV090x_READ_DEMOD(state, TMGOBS);

 if (state->algo == STV090x_BLIND_SEARCH) {
  STV090x_WRITE_DEMOD(state, SFRSTEP, 0x00);
  reg = STV090x_READ_DEMOD(state, DMDCFGMD);
  STV090x_SETFIELD_Px(reg, SCAN_ENABLE_FIELD, 0x00);
  STV090x_SETFIELD_Px(reg, CFR_AUTOSCAN_FIELD, 0x00);
  if (STV090x_WRITE_DEMOD(state, DMDCFGMD, reg) < 0)
   goto err;
  if (STV090x_WRITE_DEMOD(state, TMGCFG2, 0xc1) < 0)
   goto err;

  if (stv090x_set_srate(state, srate) < 0)
   goto err;
  blind_tune = 1;

  if (stv090x_dvbs_track_crl(state) < 0)
   goto err;
 }

 if (state->internal->dev_ver >= 0x20) {
  if ((state->search_mode == STV090x_SEARCH_DVBS1) ||
      (state->search_mode == STV090x_SEARCH_DSS) ||
      (state->search_mode == STV090x_SEARCH_AUTO)) {

   if (STV090x_WRITE_DEMOD(state, VAVSRVIT, 0x0a) < 0)
    goto err;
   if (STV090x_WRITE_DEMOD(state, VITSCALE, 0x00) < 0)
    goto err;
  }
 }

 if (STV090x_WRITE_DEMOD(state, AGC2REF, 0x38) < 0)
  goto err;


 if (STV090x_WRITE_DEMOD(state, SFRUP1, 0x80) < 0)
  goto err;

 if (STV090x_WRITE_DEMOD(state, SFRLOW1, 0x80) < 0)
  goto err;

 if ((state->internal->dev_ver >= 0x20) || (blind_tune == 1) ||
     (state->srate < 10000000)) {

  if (STV090x_WRITE_DEMOD(state, CFRINIT1, f_1) < 0)
   goto err;
  if (STV090x_WRITE_DEMOD(state, CFRINIT0, f_0) < 0)
   goto err;
  state->tuner_bw = stv090x_car_width(srate, state->rolloff) + 10000000;

  if ((state->internal->dev_ver >= 0x20) || (blind_tune == 1)) {

   if (state->algo != STV090x_WARM_SEARCH) {

    if (stv090x_i2c_gate_ctrl(state, 1) < 0)
     goto err;

    if (state->config->tuner_set_bandwidth) {
     if (state->config->tuner_set_bandwidth(fe, state->tuner_bw) < 0)
      goto err_gateoff;
    }

    if (stv090x_i2c_gate_ctrl(state, 0) < 0)
     goto err;

   }
  }
  if ((state->algo == STV090x_BLIND_SEARCH) || (state->srate < 10000000))
   msleep(50);
  else
   msleep(5);

  stv090x_get_lock_tmg(state);

  if (!(stv090x_get_dmdlock(state, (state->DemodTimeout / 2)))) {
   if (STV090x_WRITE_DEMOD(state, DMDISTATE, 0x1f) < 0)
    goto err;
   if (STV090x_WRITE_DEMOD(state, CFRINIT1, f_1) < 0)
    goto err;
   if (STV090x_WRITE_DEMOD(state, CFRINIT0, f_0) < 0)
    goto err;
   if (STV090x_WRITE_DEMOD(state, DMDISTATE, 0x18) < 0)
    goto err;

   i = 0;

   while ((!(stv090x_get_dmdlock(state, (state->DemodTimeout / 2)))) && (i <= 2)) {

    if (STV090x_WRITE_DEMOD(state, DMDISTATE, 0x1f) < 0)
     goto err;
    if (STV090x_WRITE_DEMOD(state, CFRINIT1, f_1) < 0)
     goto err;
    if (STV090x_WRITE_DEMOD(state, CFRINIT0, f_0) < 0)
     goto err;
    if (STV090x_WRITE_DEMOD(state, DMDISTATE, 0x18) < 0)
     goto err;
    i++;
   }
  }

 }

 if (state->internal->dev_ver >= 0x20) {
  if (STV090x_WRITE_DEMOD(state, CARFREQ, 0x49) < 0)
   goto err;
 }

 if ((state->delsys == 130) || (state->delsys == 131))
  stv090x_set_vit_thtracq(state);

 return 0;

err_gateoff:
 stv090x_i2c_gate_ctrl(state, 0);
err:
 dprintk(FE_ERROR, 1, "I/O error");
 return -1;
}
