
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct m88ds3103_dev {TYPE_1__* cfg; int warm; struct i2c_client* client; } ;
struct i2c_client {int dev; } ;
struct dvb_frontend {struct m88ds3103_dev* demodulator_priv; } ;
typedef enum fe_sec_tone_mode { ____Placeholder_fe_sec_tone_mode } fe_sec_tone_mode ;
struct TYPE_2__ {int envelope_mode; } ;


 int EAGAIN ;
 int EINVAL ;


 int dev_dbg (int *,char*,...) ;
 int m88ds3103_update_bits (struct m88ds3103_dev*,int,unsigned int,unsigned int) ;

__attribute__((used)) static int m88ds3103_set_tone(struct dvb_frontend *fe,
 enum fe_sec_tone_mode fe_sec_tone_mode)
{
 struct m88ds3103_dev *dev = fe->demodulator_priv;
 struct i2c_client *client = dev->client;
 int ret;
 unsigned int utmp, tone, reg_a1_mask;

 dev_dbg(&client->dev, "fe_sec_tone_mode=%d\n", fe_sec_tone_mode);

 if (!dev->warm) {
  ret = -EAGAIN;
  goto err;
 }

 switch (fe_sec_tone_mode) {
 case 128:
  tone = 0;
  reg_a1_mask = 0x47;
  break;
 case 129:
  tone = 1;
  reg_a1_mask = 0x00;
  break;
 default:
  dev_dbg(&client->dev, "invalid fe_sec_tone_mode\n");
  ret = -EINVAL;
  goto err;
 }

 utmp = tone << 7 | dev->cfg->envelope_mode << 5;
 ret = m88ds3103_update_bits(dev, 0xa2, 0xe0, utmp);
 if (ret)
  goto err;

 utmp = 1 << 2;
 ret = m88ds3103_update_bits(dev, 0xa1, reg_a1_mask, utmp);
 if (ret)
  goto err;

 return 0;
err:
 dev_dbg(&client->dev, "failed=%d\n", ret);
 return ret;
}
