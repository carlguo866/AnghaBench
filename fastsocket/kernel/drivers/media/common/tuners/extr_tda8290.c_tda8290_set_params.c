
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int (* agcf ) (struct dvb_frontend*) ;scalar_t__ config; } ;
struct tda8290_priv {int tda8290_easy_mode; int i2c_props; TYPE_3__ cfg; } ;
struct TYPE_6__ {int (* set_analog_params ) (struct dvb_frontend*,struct analog_parameters*) ;} ;
struct TYPE_7__ {TYPE_1__ tuner_ops; } ;
struct dvb_frontend {TYPE_2__ ops; struct tda8290_priv* analog_demod_priv; } ;
struct analog_parameters {scalar_t__ mode; } ;
struct TYPE_9__ {unsigned char* seq; } ;


 int ARRAY_SIZE (TYPE_4__*) ;
 scalar_t__ V4L2_TUNER_RADIO ;
 scalar_t__ deemphasis_50 ;
 TYPE_4__* fm_mode ;
 int msleep (int) ;
 int set_audio (struct dvb_frontend*,struct analog_parameters*) ;
 int stub1 (struct dvb_frontend*,struct analog_parameters*) ;
 int stub2 (struct dvb_frontend*) ;
 int tda8290_i2c_bridge (struct dvb_frontend*,int) ;
 int tuner_dbg (char*,...) ;
 int tuner_i2c_xfer_send (int *,unsigned char*,int) ;
 int tuner_i2c_xfer_send_recv (int *,unsigned char*,int,unsigned char*,int) ;

__attribute__((used)) static void tda8290_set_params(struct dvb_frontend *fe,
          struct analog_parameters *params)
{
 struct tda8290_priv *priv = fe->analog_demod_priv;

 unsigned char soft_reset[] = { 0x00, 0x00 };
 unsigned char easy_mode[] = { 0x01, priv->tda8290_easy_mode };
 unsigned char expert_mode[] = { 0x01, 0x80 };
 unsigned char agc_out_on[] = { 0x02, 0x00 };
 unsigned char gainset_off[] = { 0x28, 0x14 };
 unsigned char if_agc_spd[] = { 0x0f, 0x88 };
 unsigned char adc_head_6[] = { 0x05, 0x04 };
 unsigned char adc_head_9[] = { 0x05, 0x02 };
 unsigned char adc_head_12[] = { 0x05, 0x01 };
 unsigned char pll_bw_nom[] = { 0x0d, 0x47 };
 unsigned char pll_bw_low[] = { 0x0d, 0x27 };
 unsigned char gainset_2[] = { 0x28, 0x64 };
 unsigned char agc_rst_on[] = { 0x0e, 0x0b };
 unsigned char agc_rst_off[] = { 0x0e, 0x09 };
 unsigned char if_agc_set[] = { 0x0f, 0x81 };
 unsigned char addr_adc_sat = 0x1a;
 unsigned char addr_agc_stat = 0x1d;
 unsigned char addr_pll_stat = 0x1b;
 unsigned char adc_sat, agc_stat,
        pll_stat;
 int i;

 set_audio(fe, params);

 if (priv->cfg.config)
  tuner_dbg("tda827xa config is 0x%02x\n", priv->cfg.config);
 tuner_i2c_xfer_send(&priv->i2c_props, easy_mode, 2);
 tuner_i2c_xfer_send(&priv->i2c_props, agc_out_on, 2);
 tuner_i2c_xfer_send(&priv->i2c_props, soft_reset, 2);
 msleep(1);

 if (params->mode == V4L2_TUNER_RADIO) {
  unsigned char deemphasis[] = { 0x13, 1 };



  if (deemphasis_50)
   deemphasis[1] = 2;

  for (i = 0; i < ARRAY_SIZE(fm_mode); i++)
   tuner_i2c_xfer_send(&priv->i2c_props, fm_mode[i].seq, 2);

  tuner_i2c_xfer_send(&priv->i2c_props, deemphasis, 2);
 } else {
  expert_mode[1] = priv->tda8290_easy_mode + 0x80;
  tuner_i2c_xfer_send(&priv->i2c_props, expert_mode, 2);
  tuner_i2c_xfer_send(&priv->i2c_props, gainset_off, 2);
  tuner_i2c_xfer_send(&priv->i2c_props, if_agc_spd, 2);
  if (priv->tda8290_easy_mode & 0x60)
   tuner_i2c_xfer_send(&priv->i2c_props, adc_head_9, 2);
  else
   tuner_i2c_xfer_send(&priv->i2c_props, adc_head_6, 2);
  tuner_i2c_xfer_send(&priv->i2c_props, pll_bw_nom, 2);
 }


 tda8290_i2c_bridge(fe, 1);

 if (fe->ops.tuner_ops.set_analog_params)
  fe->ops.tuner_ops.set_analog_params(fe, params);

 for (i = 0; i < 3; i++) {
  tuner_i2c_xfer_send_recv(&priv->i2c_props,
      &addr_pll_stat, 1, &pll_stat, 1);
  if (pll_stat & 0x80) {
   tuner_i2c_xfer_send_recv(&priv->i2c_props,
       &addr_adc_sat, 1,
       &adc_sat, 1);
   tuner_i2c_xfer_send_recv(&priv->i2c_props,
       &addr_agc_stat, 1,
       &agc_stat, 1);
   tuner_dbg("tda8290 is locked, AGC: %d\n", agc_stat);
   break;
  } else {
   tuner_dbg("tda8290 not locked, no signal?\n");
   msleep(100);
  }
 }

 if ((agc_stat > 115) || (!(pll_stat & 0x80) && (adc_sat < 20))) {
  tuner_dbg("adjust gain, step 1. Agc: %d, ADC stat: %d, lock: %d\n",
      agc_stat, adc_sat, pll_stat & 0x80);
  tuner_i2c_xfer_send(&priv->i2c_props, gainset_2, 2);
  msleep(100);
  tuner_i2c_xfer_send_recv(&priv->i2c_props,
      &addr_agc_stat, 1, &agc_stat, 1);
  tuner_i2c_xfer_send_recv(&priv->i2c_props,
      &addr_pll_stat, 1, &pll_stat, 1);
  if ((agc_stat > 115) || !(pll_stat & 0x80)) {
   tuner_dbg("adjust gain, step 2. Agc: %d, lock: %d\n",
       agc_stat, pll_stat & 0x80);
   if (priv->cfg.agcf)
    priv->cfg.agcf(fe);
   msleep(100);
   tuner_i2c_xfer_send_recv(&priv->i2c_props,
       &addr_agc_stat, 1,
       &agc_stat, 1);
   tuner_i2c_xfer_send_recv(&priv->i2c_props,
       &addr_pll_stat, 1,
       &pll_stat, 1);
   if((agc_stat > 115) || !(pll_stat & 0x80)) {
    tuner_dbg("adjust gain, step 3. Agc: %d\n", agc_stat);
    tuner_i2c_xfer_send(&priv->i2c_props, adc_head_12, 2);
    tuner_i2c_xfer_send(&priv->i2c_props, pll_bw_low, 2);
    msleep(100);
   }
  }
 }


 if(priv->tda8290_easy_mode & 0x60) {
  tuner_i2c_xfer_send_recv(&priv->i2c_props,
      &addr_adc_sat, 1,
      &adc_sat, 1);
  tuner_i2c_xfer_send_recv(&priv->i2c_props,
      &addr_pll_stat, 1,
      &pll_stat, 1);
  if ((adc_sat > 20) || !(pll_stat & 0x80)) {
   tuner_dbg("trying to resolve SECAM L deadlock\n");
   tuner_i2c_xfer_send(&priv->i2c_props, agc_rst_on, 2);
   msleep(40);
   tuner_i2c_xfer_send(&priv->i2c_props, agc_rst_off, 2);
  }
 }

 tda8290_i2c_bridge(fe, 0);
 tuner_i2c_xfer_send(&priv->i2c_props, if_agc_set, 2);
}
