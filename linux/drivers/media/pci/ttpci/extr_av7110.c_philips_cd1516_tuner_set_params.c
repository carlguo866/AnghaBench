
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct i2c_msg {int addr; int* buf; int len; int flags; } ;
struct TYPE_4__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dtv_frontend_properties {int frequency; } ;
struct dvb_frontend {TYPE_2__ ops; TYPE_1__* dvb; struct dtv_frontend_properties dtv_property_cache; } ;
struct av7110 {int i2c_adap; } ;
typedef int data ;
struct TYPE_3__ {struct av7110* priv; } ;


 int EIO ;
 int i2c_transfer (int *,struct i2c_msg*,int) ;
 int stub1 (struct dvb_frontend*,int) ;

__attribute__((used)) static int philips_cd1516_tuner_set_params(struct dvb_frontend *fe)
{
 struct dtv_frontend_properties *p = &fe->dtv_property_cache;
 struct av7110* av7110 = fe->dvb->priv;
 u32 div;
 u32 f = p->frequency;
 u8 data[4];
 struct i2c_msg msg = { .addr = 0x61, .flags = 0, .buf = data, .len = sizeof(data) };

 div = (f + 36125000 + 31250) / 62500;

 data[0] = (div >> 8) & 0x7f;
 data[1] = div & 0xff;
 data[2] = 0x8e;
 data[3] = (f < 174000000 ? 0xa1 : f < 470000000 ? 0x92 : 0x34);

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);
 if (i2c_transfer(&av7110->i2c_adap, &msg, 1) != 1)
  return -EIO;
 return 0;
}
