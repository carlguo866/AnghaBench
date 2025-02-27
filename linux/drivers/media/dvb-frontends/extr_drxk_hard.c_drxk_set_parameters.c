
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_9__ ;
typedef struct TYPE_35__ TYPE_8__ ;
typedef struct TYPE_34__ TYPE_7__ ;
typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;
typedef struct TYPE_27__ TYPE_18__ ;
typedef struct TYPE_26__ TYPE_17__ ;
typedef struct TYPE_25__ TYPE_16__ ;
typedef struct TYPE_24__ TYPE_15__ ;
typedef struct TYPE_23__ TYPE_14__ ;
typedef struct TYPE_22__ TYPE_13__ ;
typedef struct TYPE_21__ TYPE_12__ ;
typedef struct TYPE_20__ TYPE_11__ ;
typedef struct TYPE_19__ TYPE_10__ ;


typedef int u32 ;
struct TYPE_28__ {int (* get_if_frequency ) (struct dvb_frontend*,int*) ;int (* set_params ) (struct dvb_frontend*) ;} ;
struct TYPE_29__ {TYPE_1__ tuner_ops; int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct TYPE_27__ {TYPE_17__* stat; } ;
struct TYPE_25__ {TYPE_15__* stat; } ;
struct TYPE_23__ {TYPE_13__* stat; } ;
struct TYPE_21__ {TYPE_11__* stat; } ;
struct TYPE_19__ {TYPE_9__* stat; } ;
struct TYPE_35__ {TYPE_7__* stat; } ;
struct TYPE_33__ {TYPE_5__* stat; } ;
struct TYPE_31__ {TYPE_3__* stat; } ;
struct dtv_frontend_properties {int delivery_system; TYPE_18__ post_bit_count; TYPE_16__ post_bit_error; TYPE_14__ pre_bit_count; TYPE_12__ pre_bit_error; TYPE_10__ block_count; TYPE_8__ block_error; TYPE_6__ cnr; TYPE_4__ strength; } ;
struct dvb_frontend {TYPE_2__ ops; struct drxk_state* demodulator_priv; struct dtv_frontend_properties dtv_property_cache; } ;
struct drxk_state {scalar_t__ m_drxk_state; int m_itut_annex_c; int m_has_dvbt; int m_has_dvbc; struct dtv_frontend_properties props; } ;
struct TYPE_36__ {void* scale; } ;
struct TYPE_34__ {void* scale; } ;
struct TYPE_32__ {void* scale; } ;
struct TYPE_30__ {int scale; } ;
struct TYPE_26__ {void* scale; } ;
struct TYPE_24__ {void* scale; } ;
struct TYPE_22__ {void* scale; } ;
struct TYPE_20__ {void* scale; } ;


 scalar_t__ DRXK_NO_DEV ;
 scalar_t__ DRXK_UNINITIALIZED ;
 int EAGAIN ;
 int EINVAL ;
 int ENODEV ;
 void* FE_SCALE_NOT_AVAILABLE ;
 int FE_SCALE_RELATIVE ;
 int OM_DVBT ;
 int OM_QAM_ITU_A ;
 int OM_QAM_ITU_C ;



 int dprintk (int,char*) ;
 int pr_err (char*) ;
 int setoperation_mode (struct drxk_state*,int ) ;
 int shut_down (struct drxk_state*) ;
 int start (struct drxk_state*,int ,int) ;
 int stub1 (struct dvb_frontend*,int) ;
 int stub2 (struct dvb_frontend*) ;
 int stub3 (struct dvb_frontend*,int) ;
 int stub4 (struct dvb_frontend*,int*) ;

__attribute__((used)) static int drxk_set_parameters(struct dvb_frontend *fe)
{
 struct dtv_frontend_properties *p = &fe->dtv_property_cache;
 u32 delsys = p->delivery_system, old_delsys;
 struct drxk_state *state = fe->demodulator_priv;
 u32 IF;

 dprintk(1, "\n");

 if (state->m_drxk_state == DRXK_NO_DEV)
  return -ENODEV;

 if (state->m_drxk_state == DRXK_UNINITIALIZED)
  return -EAGAIN;

 if (!fe->ops.tuner_ops.get_if_frequency) {
  pr_err("Error: get_if_frequency() not defined at tuner. Can't work without it!\n");
  return -EINVAL;
 }

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);
 if (fe->ops.tuner_ops.set_params)
  fe->ops.tuner_ops.set_params(fe);
 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 0);

 old_delsys = state->props.delivery_system;
 state->props = *p;

 if (old_delsys != delsys) {
  shut_down(state);
  switch (delsys) {
  case 130:
  case 129:
   if (!state->m_has_dvbc)
    return -EINVAL;
   state->m_itut_annex_c = (delsys == 129) ?
      1 : 0;
   if (state->m_itut_annex_c)
    setoperation_mode(state, OM_QAM_ITU_C);
   else
    setoperation_mode(state, OM_QAM_ITU_A);
   break;
  case 128:
   if (!state->m_has_dvbt)
    return -EINVAL;
   setoperation_mode(state, OM_DVBT);
   break;
  default:
   return -EINVAL;
  }
 }

 fe->ops.tuner_ops.get_if_frequency(fe, &IF);
 start(state, 0, IF);


 p->strength.stat[0].scale = FE_SCALE_RELATIVE;
 p->cnr.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
 p->block_error.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
 p->block_count.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
 p->pre_bit_error.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
 p->pre_bit_count.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
 p->post_bit_error.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
 p->post_bit_count.stat[0].scale = FE_SCALE_NOT_AVAILABLE;



 return 0;
}
