
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_6__ {int addr; } ;
struct tuner_simple_priv {int bandwidth; scalar_t__ frequency; TYPE_1__ i2c_props; } ;
struct TYPE_9__ {int bandwidth; } ;
struct TYPE_10__ {TYPE_4__ ofdm; } ;
struct dvb_frontend_parameters {TYPE_5__ u; } ;
struct TYPE_7__ {scalar_t__ type; } ;
struct TYPE_8__ {TYPE_2__ info; } ;
struct dvb_frontend {TYPE_3__ ops; struct tuner_simple_priv* tuner_priv; } ;


 int EINVAL ;
 scalar_t__ FE_OFDM ;
 scalar_t__ simple_dvb_configure (struct dvb_frontend*,int *,struct dvb_frontend_parameters*) ;

__attribute__((used)) static int simple_dvb_calc_regs(struct dvb_frontend *fe,
    struct dvb_frontend_parameters *params,
    u8 *buf, int buf_len)
{
 struct tuner_simple_priv *priv = fe->tuner_priv;
 u32 frequency;

 if (buf_len < 5)
  return -EINVAL;

 frequency = simple_dvb_configure(fe, buf+1, params);
 if (frequency == 0)
  return -EINVAL;

 buf[0] = priv->i2c_props.addr;

 priv->frequency = frequency;
 priv->bandwidth = (fe->ops.info.type == FE_OFDM) ?
  params->u.ofdm.bandwidth : 0;

 return 5;
}
