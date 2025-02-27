
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lnbp21 {int i2c; int override_and; int config; int override_or; int i2c_addr; } ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
struct dvb_frontend {scalar_t__ sec_priv; } ;
typedef enum fe_sec_tone_mode { ____Placeholder_fe_sec_tone_mode } fe_sec_tone_mode ;


 int EINVAL ;
 int EIO ;
 int LNBP21_TEN ;


 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int lnbp21_set_tone(struct dvb_frontend *fe,
      enum fe_sec_tone_mode tone)
{
 struct lnbp21 *lnbp21 = (struct lnbp21 *) fe->sec_priv;
 struct i2c_msg msg = { .addr = lnbp21->i2c_addr, .flags = 0,
    .buf = &lnbp21->config,
    .len = sizeof(lnbp21->config) };

 switch (tone) {
 case 129:
  lnbp21->config &= ~LNBP21_TEN;
  break;
 case 128:
  lnbp21->config |= LNBP21_TEN;
  break;
 default:
  return -EINVAL;
 }

 lnbp21->config |= lnbp21->override_or;
 lnbp21->config &= lnbp21->override_and;

 return (i2c_transfer(lnbp21->i2c, &msg, 1) == 1) ? 0 : -EIO;
}
