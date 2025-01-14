
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tea5767_priv {int i2c_props; } ;
struct dvb_frontend {struct tea5767_priv* tuner_priv; } ;


 unsigned char TEA5767_HIGH_CUT_CTRL ;
 unsigned char TEA5767_JAPAN_BAND ;
 unsigned char TEA5767_PORT1_HIGH ;
 unsigned char TEA5767_PORT2_HIGH ;
 unsigned char TEA5767_STDBY ;
 unsigned char TEA5767_ST_NOISE_CTL ;
 unsigned int tuner_i2c_xfer_send (int *,unsigned char*,int) ;
 int tuner_warn (char*,unsigned int) ;

__attribute__((used)) static int tea5767_standby(struct dvb_frontend *fe)
{
 unsigned char buffer[5];
 struct tea5767_priv *priv = fe->tuner_priv;
 unsigned div, rc;

 div = (87500 * 4 + 700 + 225 + 25) / 50;
 buffer[0] = (div >> 8) & 0x3f;
 buffer[1] = div & 0xff;
 buffer[2] = TEA5767_PORT1_HIGH;
 buffer[3] = TEA5767_PORT2_HIGH | TEA5767_HIGH_CUT_CTRL |
      TEA5767_ST_NOISE_CTL | TEA5767_JAPAN_BAND | TEA5767_STDBY;
 buffer[4] = 0;

 if (5 != (rc = tuner_i2c_xfer_send(&priv->i2c_props, buffer, 5)))
  tuner_warn("i2c i/o error: rc == %d (should be 5)\n", rc);

 return 0;
}
