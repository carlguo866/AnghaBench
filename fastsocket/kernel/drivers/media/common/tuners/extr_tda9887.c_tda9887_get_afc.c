
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda9887_priv {int i2c_props; } ;
struct dvb_frontend {struct tda9887_priv* analog_demod_priv; } ;
typedef int __u8 ;


 int tuner_i2c_xfer_recv (int *,int*,int) ;

__attribute__((used)) static int tda9887_get_afc(struct dvb_frontend *fe)
{
 struct tda9887_priv *priv = fe->analog_demod_priv;
 static int AFC_BITS_2_kHz[] = {
  -12500, -37500, -62500, -97500,
  -112500, -137500, -162500, -187500,
  187500, 162500, 137500, 112500,
  97500 , 62500, 37500 , 12500
 };
 int afc=0;
 __u8 reg = 0;

 if (1 == tuner_i2c_xfer_recv(&priv->i2c_props,&reg,1))
  afc = AFC_BITS_2_kHz[(reg>>1)&0x0f];

 return afc;
}
