
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_tuner {scalar_t__ index; int rxsubchans; int signal; int audmode; int capability; int rangehigh; int rangelow; int type; int name; } ;
struct radio_isa_ops {int (* g_rxsubchans ) (struct radio_isa_card*) ;int (* g_signal ) (struct radio_isa_card*) ;} ;
struct radio_isa_card {scalar_t__ stereo; TYPE_1__* drv; } ;
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ has_stereo; struct radio_isa_ops* ops; } ;


 int EINVAL ;
 int FREQ_HIGH ;
 int FREQ_LOW ;
 int V4L2_TUNER_CAP_LOW ;
 int V4L2_TUNER_CAP_STEREO ;
 int V4L2_TUNER_MODE_MONO ;
 int V4L2_TUNER_MODE_STEREO ;
 int V4L2_TUNER_RADIO ;
 int V4L2_TUNER_SUB_MONO ;
 int V4L2_TUNER_SUB_STEREO ;
 int strscpy (int ,char*,int) ;
 int stub1 (struct radio_isa_card*) ;
 int stub2 (struct radio_isa_card*) ;
 struct radio_isa_card* video_drvdata (struct file*) ;

__attribute__((used)) static int radio_isa_g_tuner(struct file *file, void *priv,
    struct v4l2_tuner *v)
{
 struct radio_isa_card *isa = video_drvdata(file);
 const struct radio_isa_ops *ops = isa->drv->ops;

 if (v->index > 0)
  return -EINVAL;

 strscpy(v->name, "FM", sizeof(v->name));
 v->type = V4L2_TUNER_RADIO;
 v->rangelow = FREQ_LOW;
 v->rangehigh = FREQ_HIGH;
 v->capability = V4L2_TUNER_CAP_LOW;
 if (isa->drv->has_stereo)
  v->capability |= V4L2_TUNER_CAP_STEREO;

 if (ops->g_rxsubchans)
  v->rxsubchans = ops->g_rxsubchans(isa);
 else
  v->rxsubchans = V4L2_TUNER_SUB_MONO | V4L2_TUNER_SUB_STEREO;
 v->audmode = isa->stereo ? V4L2_TUNER_MODE_STEREO : V4L2_TUNER_MODE_MONO;
 if (ops->g_signal)
  v->signal = ops->g_signal(isa);
 else
  v->signal = (v->rxsubchans & V4L2_TUNER_SUB_STEREO) ?
        0xffff : 0;
 return 0;
}
