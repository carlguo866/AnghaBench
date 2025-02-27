
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ width; scalar_t__ height; scalar_t__ code; } ;
struct v4l2_subdev_format {TYPE_3__ format; void* which; int pad; } ;
struct TYPE_7__ {int num_pads; struct media_pad* pads; } ;
struct v4l2_subdev {TYPE_2__ entity; } ;
struct v4l2_plane_pix_format {scalar_t__ sizeimage; } ;
struct media_pad {int flags; int index; int entity; } ;
struct TYPE_6__ {int pipe; } ;
struct fimc_vid_cap {TYPE_4__* ctx; struct v4l2_subdev subdev; TYPE_1__ ve; } ;
struct fimc_pipeline {struct v4l2_subdev** subdevs; } ;
struct fimc_frame {scalar_t__ f_width; scalar_t__ f_height; scalar_t__* payload; TYPE_5__* fmt; } ;
struct fimc_dev {struct fimc_vid_cap vid_cap; } ;
struct TYPE_10__ {scalar_t__ mbus_code; unsigned int memplanes; } ;
struct TYPE_9__ {struct fimc_frame d_frame; struct fimc_frame s_frame; } ;


 int ENOIOCTLCMD ;
 int EPIPE ;
 int FIMC_MAX_PLANES ;
 size_t IDX_SENSOR ;
 int MEDIA_PAD_FL_SINK ;
 void* V4L2_SUBDEV_FORMAT_ACTIVE ;
 int fimc_get_sensor_frame_desc (struct v4l2_subdev*,struct v4l2_plane_pix_format*,unsigned int,int) ;
 scalar_t__ fimc_user_defined_mbus_fmt (scalar_t__) ;
 int get_fmt ;
 int is_media_entity_v4l2_subdev (int ) ;
 struct media_pad* media_entity_remote_pad (struct media_pad*) ;
 struct v4l2_subdev* media_entity_to_v4l2_subdev (int ) ;
 int pad ;
 struct fimc_pipeline* to_fimc_pipeline (int ) ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,int *,struct v4l2_subdev_format*) ;

__attribute__((used)) static int fimc_pipeline_validate(struct fimc_dev *fimc)
{
 struct v4l2_subdev_format sink_fmt, src_fmt;
 struct fimc_vid_cap *vc = &fimc->vid_cap;
 struct v4l2_subdev *sd = &vc->subdev;
 struct fimc_pipeline *p = to_fimc_pipeline(vc->ve.pipe);
 struct media_pad *sink_pad, *src_pad;
 int i, ret;

 while (1) {





  src_pad = ((void*)0);

  for (i = 0; i < sd->entity.num_pads; i++) {
   struct media_pad *p = &sd->entity.pads[i];

   if (p->flags & MEDIA_PAD_FL_SINK) {
    sink_pad = p;
    src_pad = media_entity_remote_pad(sink_pad);
    if (src_pad)
     break;
   }
  }

  if (!src_pad || !is_media_entity_v4l2_subdev(src_pad->entity))
   break;


  if (sd == &vc->subdev) {
   struct fimc_frame *ff = &vc->ctx->s_frame;
   sink_fmt.format.width = ff->f_width;
   sink_fmt.format.height = ff->f_height;
   sink_fmt.format.code = ff->fmt ? ff->fmt->mbus_code : 0;
  } else {
   sink_fmt.pad = sink_pad->index;
   sink_fmt.which = V4L2_SUBDEV_FORMAT_ACTIVE;
   ret = v4l2_subdev_call(sd, pad, get_fmt, ((void*)0), &sink_fmt);
   if (ret < 0 && ret != -ENOIOCTLCMD)
    return -EPIPE;
  }


  sd = media_entity_to_v4l2_subdev(src_pad->entity);
  src_fmt.pad = src_pad->index;
  src_fmt.which = V4L2_SUBDEV_FORMAT_ACTIVE;
  ret = v4l2_subdev_call(sd, pad, get_fmt, ((void*)0), &src_fmt);
  if (ret < 0 && ret != -ENOIOCTLCMD)
   return -EPIPE;

  if (src_fmt.format.width != sink_fmt.format.width ||
      src_fmt.format.height != sink_fmt.format.height ||
      src_fmt.format.code != sink_fmt.format.code)
   return -EPIPE;

  if (sd == p->subdevs[IDX_SENSOR] &&
      fimc_user_defined_mbus_fmt(src_fmt.format.code)) {
   struct v4l2_plane_pix_format plane_fmt[FIMC_MAX_PLANES];
   struct fimc_frame *frame = &vc->ctx->d_frame;
   unsigned int i;

   ret = fimc_get_sensor_frame_desc(sd, plane_fmt,
        frame->fmt->memplanes,
        0);
   if (ret < 0)
    return -EPIPE;

   for (i = 0; i < frame->fmt->memplanes; i++)
    if (frame->payload[i] < plane_fmt[i].sizeimage)
     return -EPIPE;
  }
 }
 return 0;
}
