
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct i2c_msg {int addr; int* buf; int len; int flags; } ;
struct dvb_frontend_parameters {int frequency; } ;
struct TYPE_5__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dvb_frontend {TYPE_2__ ops; TYPE_1__* dvb; } ;
struct cx8802_dev {TYPE_3__* core; } ;
typedef int buf ;
struct TYPE_6__ {int i2c_adap; } ;
struct TYPE_4__ {struct cx8802_dev* priv; } ;


 int EIO ;
 int i2c_transfer (int *,struct i2c_msg*,int) ;
 int stub1 (struct dvb_frontend*,int) ;

__attribute__((used)) static int samsung_smt_7020_tuner_set_params(struct dvb_frontend *fe,
 struct dvb_frontend_parameters *params)
{
 struct cx8802_dev *dev = fe->dvb->priv;
 u8 buf[4];
 u32 div;
 struct i2c_msg msg = {
  .addr = 0x61,
  .flags = 0,
  .buf = buf,
  .len = sizeof(buf) };

 div = params->frequency / 125;

 buf[0] = (div >> 8) & 0x7f;
 buf[1] = div & 0xff;
 buf[2] = 0x84;
 buf[3] = 0x00;

 if (params->frequency < 1500000)
  buf[3] |= 0x10;

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);

 if (i2c_transfer(&dev->core->i2c_adap, &msg, 1) != 1)
  return -EIO;

 return 0;
}
