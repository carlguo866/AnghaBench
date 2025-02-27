
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda18271_priv {int output_opt; } ;
struct dvb_frontend {struct tda18271_priv* tuner_priv; } ;


 int TDA18271_OUTPUT_LT_OFF ;
 int TDA18271_OUTPUT_XT_OFF ;
 int tda18271_set_standby_mode (struct dvb_frontend*,int,int,int) ;
 int tda_dbg (char*,char*,char*,char*) ;
 scalar_t__ tda_fail (int) ;

__attribute__((used)) static int tda18271_toggle_output(struct dvb_frontend *fe, int standby)
{
 struct tda18271_priv *priv = fe->tuner_priv;

 int ret = tda18271_set_standby_mode(fe, standby ? 1 : 0,
   priv->output_opt & TDA18271_OUTPUT_LT_OFF ? 1 : 0,
   priv->output_opt & TDA18271_OUTPUT_XT_OFF ? 1 : 0);

 if (tda_fail(ret))
  goto fail;

 tda_dbg("%s mode: xtal oscillator %s, slave tuner loop thru %s\n",
  standby ? "standby" : "active",
  priv->output_opt & TDA18271_OUTPUT_XT_OFF ? "off" : "on",
  priv->output_opt & TDA18271_OUTPUT_LT_OFF ? "off" : "on");
fail:
 return ret;
}
