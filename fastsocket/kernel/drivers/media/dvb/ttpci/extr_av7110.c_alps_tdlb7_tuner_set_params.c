
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct i2c_msg {int addr; int* buf; int len; int flags; } ;
struct dvb_frontend_parameters {int frequency; } ;
struct TYPE_4__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dvb_frontend {TYPE_2__ ops; TYPE_1__* dvb; } ;
struct av7110 {int i2c_adap; } ;
typedef int data ;
struct TYPE_3__ {struct av7110* priv; } ;


 int EIO ;
 int i2c_transfer (int *,struct i2c_msg*,int) ;
 int stub1 (struct dvb_frontend*,int) ;

__attribute__((used)) static int alps_tdlb7_tuner_set_params(struct dvb_frontend* fe, struct dvb_frontend_parameters *params)
{
 struct av7110* av7110 = fe->dvb->priv;
 u32 div, pwr;
 u8 data[4];
 struct i2c_msg msg = { .addr = 0x60, .flags = 0, .buf = data, .len = sizeof(data) };

 div = (params->frequency + 36200000) / 166666;

 if (params->frequency <= 782000000)
  pwr = 1;
 else
  pwr = 2;

 data[0] = (div >> 8) & 0x7f;
 data[1] = div & 0xff;
 data[2] = 0x85;
 data[3] = pwr << 6;

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);
 if (i2c_transfer(&av7110->i2c_adap, &msg, 1) != 1)
  return -EIO;
 return 0;
}
