
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ width; scalar_t__ height; scalar_t__ code; } ;
struct v4l2_subdev_format {TYPE_4__ format; void* which; int pad; } ;
struct TYPE_5__ {struct media_pad* pads; } ;
struct v4l2_subdev {TYPE_1__ entity; } ;
struct media_pad {int flags; int index; int entity; } ;
struct flite_frame {scalar_t__ f_width; scalar_t__ f_height; } ;
struct TYPE_7__ {TYPE_2__* fmt; } ;
struct fimc_lite {TYPE_3__ inp_frame; struct flite_frame out_frame; struct v4l2_subdev subdev; } ;
struct TYPE_6__ {scalar_t__ mbus_code; } ;


 int ENOIOCTLCMD ;
 int EPIPE ;
 int MEDIA_PAD_FL_SINK ;
 void* V4L2_SUBDEV_FORMAT_ACTIVE ;
 int get_fmt ;
 int is_media_entity_v4l2_subdev (int ) ;
 struct media_pad* media_entity_remote_pad (struct media_pad*) ;
 struct v4l2_subdev* media_entity_to_v4l2_subdev (int ) ;
 int v4l2_subdev_call (struct v4l2_subdev*,struct media_pad*,int ,int *,struct v4l2_subdev_format*) ;

__attribute__((used)) static int fimc_pipeline_validate(struct fimc_lite *fimc)
{
 struct v4l2_subdev *sd = &fimc->subdev;
 struct v4l2_subdev_format sink_fmt, src_fmt;
 struct media_pad *pad;
 int ret;

 while (1) {

  pad = &sd->entity.pads[0];
  if (!(pad->flags & MEDIA_PAD_FL_SINK))
   break;

  if (sd == &fimc->subdev) {
   struct flite_frame *ff = &fimc->out_frame;
   sink_fmt.format.width = ff->f_width;
   sink_fmt.format.height = ff->f_height;
   sink_fmt.format.code = fimc->inp_frame.fmt->mbus_code;
  } else {
   sink_fmt.pad = pad->index;
   sink_fmt.which = V4L2_SUBDEV_FORMAT_ACTIVE;
   ret = v4l2_subdev_call(sd, pad, get_fmt, ((void*)0),
            &sink_fmt);
   if (ret < 0 && ret != -ENOIOCTLCMD)
    return -EPIPE;
  }

  pad = media_entity_remote_pad(pad);
  if (!pad || !is_media_entity_v4l2_subdev(pad->entity))
   break;

  sd = media_entity_to_v4l2_subdev(pad->entity);
  src_fmt.pad = pad->index;
  src_fmt.which = V4L2_SUBDEV_FORMAT_ACTIVE;
  ret = v4l2_subdev_call(sd, pad, get_fmt, ((void*)0), &src_fmt);
  if (ret < 0 && ret != -ENOIOCTLCMD)
   return -EPIPE;

  if (src_fmt.format.width != sink_fmt.format.width ||
      src_fmt.format.height != sink_fmt.format.height ||
      src_fmt.format.code != sink_fmt.format.code)
   return -EPIPE;
 }
 return 0;
}
