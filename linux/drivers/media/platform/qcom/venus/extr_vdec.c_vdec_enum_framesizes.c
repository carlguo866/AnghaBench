
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct venus_inst {int dummy; } ;
struct venus_format {int dummy; } ;
struct TYPE_2__ {int step_height; int max_height; int min_height; int step_width; int max_width; int min_width; } ;
struct v4l2_frmsizeenum {TYPE_1__ stepwise; int type; scalar_t__ index; int pixel_format; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ;
 int V4L2_FRMSIZE_TYPE_STEPWISE ;
 struct venus_format* find_format (struct venus_inst*,int ,int ) ;
 int frame_height_max (struct venus_inst*) ;
 int frame_height_min (struct venus_inst*) ;
 int frame_height_step (struct venus_inst*) ;
 int frame_width_max (struct venus_inst*) ;
 int frame_width_min (struct venus_inst*) ;
 int frame_width_step (struct venus_inst*) ;
 struct venus_inst* to_inst (struct file*) ;

__attribute__((used)) static int vdec_enum_framesizes(struct file *file, void *fh,
    struct v4l2_frmsizeenum *fsize)
{
 struct venus_inst *inst = to_inst(file);
 const struct venus_format *fmt;

 fmt = find_format(inst, fsize->pixel_format,
     V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);
 if (!fmt) {
  fmt = find_format(inst, fsize->pixel_format,
      V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE);
  if (!fmt)
   return -EINVAL;
 }

 if (fsize->index)
  return -EINVAL;

 fsize->type = V4L2_FRMSIZE_TYPE_STEPWISE;

 fsize->stepwise.min_width = frame_width_min(inst);
 fsize->stepwise.max_width = frame_width_max(inst);
 fsize->stepwise.step_width = frame_width_step(inst);
 fsize->stepwise.min_height = frame_height_min(inst);
 fsize->stepwise.max_height = frame_height_max(inst);
 fsize->stepwise.step_height = frame_height_step(inst);

 return 0;
}
