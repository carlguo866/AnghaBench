
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int numerator; int denominator; } ;
struct v4l2_frmivalenum {scalar_t__ pixel_format; size_t index; TYPE_2__ discrete; int type; int height; int width; } ;
struct TYPE_8__ {TYPE_3__* mode_framerates; TYPE_1__* cam_mode; } ;
struct gspca_dev {TYPE_4__ cam; } ;
struct file {int dummy; } ;
typedef size_t __u32 ;
struct TYPE_7__ {scalar_t__ nrates; int * rates; } ;
struct TYPE_5__ {scalar_t__ pixelformat; } ;


 int EINVAL ;
 int V4L2_FRMIVAL_TYPE_DISCRETE ;
 struct gspca_dev* video_drvdata (struct file*) ;
 int wxh_to_mode (struct gspca_dev*,int ,int ,scalar_t__) ;

__attribute__((used)) static int vidioc_enum_frameintervals(struct file *filp, void *priv,
          struct v4l2_frmivalenum *fival)
{
 struct gspca_dev *gspca_dev = video_drvdata(filp);
 int mode;
 __u32 i;

 mode = wxh_to_mode(gspca_dev, fival->width, fival->height,
      fival->pixel_format);
 if (mode < 0)
  return -EINVAL;

 if (gspca_dev->cam.mode_framerates == ((void*)0) ||
   gspca_dev->cam.mode_framerates[mode].nrates == 0)
  return -EINVAL;

 if (fival->pixel_format !=
   gspca_dev->cam.cam_mode[mode].pixelformat)
  return -EINVAL;

 for (i = 0; i < gspca_dev->cam.mode_framerates[mode].nrates; i++) {
  if (fival->index == i) {
   fival->type = V4L2_FRMIVAL_TYPE_DISCRETE;
   fival->discrete.numerator = 1;
   fival->discrete.denominator =
    gspca_dev->cam.mode_framerates[mode].rates[i];
   return 0;
  }
 }

 return -EINVAL;
}
