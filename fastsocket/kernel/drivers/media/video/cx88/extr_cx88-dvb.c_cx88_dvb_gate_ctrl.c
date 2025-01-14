
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct videobuf_dvb_frontends {int gate; } ;
struct TYPE_6__ {TYPE_4__* frontend; } ;
struct videobuf_dvb_frontend {TYPE_2__ dvb; } ;
struct cx88_core {TYPE_3__* dvbdev; } ;
struct TYPE_5__ {int (* i2c_gate_ctrl ) (TYPE_4__*,int) ;} ;
struct TYPE_8__ {TYPE_1__ ops; } ;
struct TYPE_7__ {struct videobuf_dvb_frontends frontends; } ;


 int stub1 (TYPE_4__*,int) ;
 struct videobuf_dvb_frontend* videobuf_dvb_get_frontend (struct videobuf_dvb_frontends*,int) ;

__attribute__((used)) static void cx88_dvb_gate_ctrl(struct cx88_core *core, int open)
{
 struct videobuf_dvb_frontends *f;
 struct videobuf_dvb_frontend *fe;

 if (!core->dvbdev)
  return;

 f = &core->dvbdev->frontends;

 if (!f)
  return;

 if (f->gate <= 1)
  fe = videobuf_dvb_get_frontend(f, 1);
 else
  fe = videobuf_dvb_get_frontend(f, f->gate);

 if (fe && fe->dvb.frontend && fe->dvb.frontend->ops.i2c_gate_ctrl)
  fe->dvb.frontend->ops.i2c_gate_ctrl(fe->dvb.frontend, open);
}
