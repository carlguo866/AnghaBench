
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vino_channel_settings {int input; } ;
struct v4l2_control {int value; int id; } ;
struct file {int dummy; } ;
struct TYPE_6__ {int input_lock; } ;
struct TYPE_5__ {int maximum; int minimum; int id; } ;
struct TYPE_4__ {int maximum; int minimum; int id; } ;


 int EBUSY ;
 int EINVAL ;
 int ERANGE ;
 int VINO_INDYCAM_V4L2_CONTROL_COUNT ;



 int VINO_SAA7191_V4L2_CONTROL_COUNT ;
 int camera_call (int ,int ,struct v4l2_control*) ;
 int core ;
 int decoder_call (int ,int ,struct v4l2_control*) ;
 int s_ctrl ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct vino_channel_settings* video_drvdata (struct file*) ;
 TYPE_3__* vino_drvdata ;
 TYPE_2__* vino_indycam_v4l2_controls ;
 int vino_is_input_owner (struct vino_channel_settings*) ;
 TYPE_1__* vino_saa7191_v4l2_controls ;

__attribute__((used)) static int vino_s_ctrl(struct file *file, void *__fh,
       struct v4l2_control *control)
{
 struct vino_channel_settings *vcs = video_drvdata(file);
 unsigned long flags;
 int i;
 int err = 0;

 spin_lock_irqsave(&vino_drvdata->input_lock, flags);

 if (!vino_is_input_owner(vcs)) {
  err = -EBUSY;
  goto out;
 }

 switch (vcs->input) {
 case 129: {
  err = -EINVAL;
  for (i = 0; i < VINO_INDYCAM_V4L2_CONTROL_COUNT; i++) {
   if (vino_indycam_v4l2_controls[i].id == control->id) {
    err = 0;
    break;
   }
  }
  if (err)
   goto out;
  if (control->value < vino_indycam_v4l2_controls[i].minimum ||
      control->value > vino_indycam_v4l2_controls[i].maximum) {
   err = -ERANGE;
   goto out;
  }
  err = camera_call(core, s_ctrl, control);
  if (err)
   err = -EINVAL;
  break;
 }
 case 130:
 case 128: {
  err = -EINVAL;
  for (i = 0; i < VINO_SAA7191_V4L2_CONTROL_COUNT; i++) {
   if (vino_saa7191_v4l2_controls[i].id == control->id) {
    err = 0;
    break;
   }
  }
  if (err)
   goto out;
  if (control->value < vino_saa7191_v4l2_controls[i].minimum ||
      control->value > vino_saa7191_v4l2_controls[i].maximum) {
   err = -ERANGE;
   goto out;
  }

  err = decoder_call(core, s_ctrl, control);
  if (err)
   err = -EINVAL;
  break;
 }
 default:
  err = -EINVAL;
 }

out:
 spin_unlock_irqrestore(&vino_drvdata->input_lock, flags);

 return err;
}
