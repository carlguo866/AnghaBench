
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tda827x_priv {int sgIF; int lpsel; unsigned int frequency; int i2c_addr; } ;
struct i2c_msg {unsigned char* buf; int len; int flags; int addr; } ;
struct dvb_frontend {struct tda827x_priv* tuner_priv; } ;
struct analog_parameters {unsigned int frequency; scalar_t__ mode; } ;
struct TYPE_2__ {int lomax; int spd; int div1p5; int bs; int bp; int gc3; unsigned char cp; } ;


 scalar_t__ V4L2_TUNER_RADIO ;
 int msleep (int) ;
 int tda827x_set_std (struct dvb_frontend*,struct analog_parameters*) ;
 TYPE_1__* tda827x_table ;
 int tuner_transfer (struct dvb_frontend*,struct i2c_msg*,int) ;

__attribute__((used)) static int tda827xo_set_analog_params(struct dvb_frontend *fe,
          struct analog_parameters *params)
{
 unsigned char tuner_reg[8];
 unsigned char reg2[2];
 u32 N;
 int i;
 struct tda827x_priv *priv = fe->tuner_priv;
 struct i2c_msg msg = { .addr = priv->i2c_addr, .flags = 0 };
 unsigned int freq = params->frequency;

 tda827x_set_std(fe, params);

 if (params->mode == V4L2_TUNER_RADIO)
  freq = freq / 1000;

 N = freq + priv->sgIF;

 i = 0;
 while (tda827x_table[i].lomax < N * 62500) {
  if (tda827x_table[i + 1].lomax == 0)
   break;
  i++;
 }

 N = N << tda827x_table[i].spd;

 tuner_reg[0] = 0;
 tuner_reg[1] = (unsigned char)(N>>8);
 tuner_reg[2] = (unsigned char) N;
 tuner_reg[3] = 0x40;
 tuner_reg[4] = 0x52 + (priv->lpsel << 5);
 tuner_reg[5] = (tda827x_table[i].spd << 6) +
         (tda827x_table[i].div1p5 << 5) +
         (tda827x_table[i].bs << 3) + tda827x_table[i].bp;
 tuner_reg[6] = 0x8f + (tda827x_table[i].gc3 << 4);
 tuner_reg[7] = 0x8f;

 msg.buf = tuner_reg;
 msg.len = 8;
 tuner_transfer(fe, &msg, 1);

 msg.buf = reg2;
 msg.len = 2;
 reg2[0] = 0x80;
 reg2[1] = 0;
 tuner_transfer(fe, &msg, 1);

 reg2[0] = 0x60;
 reg2[1] = 0xbf;
 tuner_transfer(fe, &msg, 1);

 reg2[0] = 0x30;
 reg2[1] = tuner_reg[4] + 0x80;
 tuner_transfer(fe, &msg, 1);

 msleep(1);
 reg2[0] = 0x30;
 reg2[1] = tuner_reg[4] + 4;
 tuner_transfer(fe, &msg, 1);

 msleep(1);
 reg2[0] = 0x30;
 reg2[1] = tuner_reg[4];
 tuner_transfer(fe, &msg, 1);

 msleep(550);
 reg2[0] = 0x30;
 reg2[1] = (tuner_reg[4] & 0xfc) + tda827x_table[i].cp;
 tuner_transfer(fe, &msg, 1);

 reg2[0] = 0x60;
 reg2[1] = 0x3f;
 tuner_transfer(fe, &msg, 1);

 reg2[0] = 0x80;
 reg2[1] = 0x08;
 tuner_transfer(fe, &msg, 1);

 priv->frequency = params->frequency;

 return 0;
}
