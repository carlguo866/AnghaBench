
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_tuner {scalar_t__ index; int rangehigh; int signal; int capability; int type; int name; } ;
struct file {int dummy; } ;
struct TYPE_4__ {scalar_t__ tuner_type; } ;
struct cx88_core {TYPE_2__ board; } ;
struct cx8802_fh {TYPE_1__* dev; } ;
struct TYPE_3__ {struct cx88_core* core; } ;


 int EINVAL ;
 int MO_DEVICE_STATUS ;
 scalar_t__ UNSET ;
 int V4L2_TUNER_ANALOG_TV ;
 int V4L2_TUNER_CAP_NORM ;
 int cx88_get_stereo (struct cx88_core*,struct v4l2_tuner*) ;
 int cx_read (int ) ;
 int strcpy (int ,char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int vidioc_g_tuner (struct file *file, void *priv,
    struct v4l2_tuner *t)
{
 struct cx88_core *core = ((struct cx8802_fh *)priv)->dev->core;
 u32 reg;

 if (unlikely(UNSET == core->board.tuner_type))
  return -EINVAL;
 if (0 != t->index)
  return -EINVAL;

 strcpy(t->name, "Television");
 t->type = V4L2_TUNER_ANALOG_TV;
 t->capability = V4L2_TUNER_CAP_NORM;
 t->rangehigh = 0xffffffffUL;

 cx88_get_stereo(core ,t);
 reg = cx_read(MO_DEVICE_STATUS);
 t->signal = (reg & (1<<5)) ? 0xffff : 0x0000;
 return 0;
}
