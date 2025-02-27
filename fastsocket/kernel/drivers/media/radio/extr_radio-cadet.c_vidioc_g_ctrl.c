
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int id; int value; } ;
struct file {int dummy; } ;
struct cadet {int dummy; } ;


 int EINVAL ;


 int cadet_getvol (struct cadet*) ;
 struct cadet* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_ctrl(struct file *file, void *priv,
    struct v4l2_control *ctrl)
{
 struct cadet *dev = video_drvdata(file);

 switch (ctrl->id) {
 case 129:
  ctrl->value = (cadet_getvol(dev) == 0);
  break;
 case 128:
  ctrl->value = cadet_getvol(dev);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
