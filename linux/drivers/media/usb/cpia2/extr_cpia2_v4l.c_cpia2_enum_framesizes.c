
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int height; int width; } ;
struct v4l2_frmsizeenum {scalar_t__ pixel_format; size_t index; TYPE_1__ discrete; int type; } ;
struct file {int dummy; } ;
struct TYPE_5__ {int height; int width; } ;


 size_t ARRAY_SIZE (TYPE_2__*) ;
 int EINVAL ;
 int V4L2_FRMSIZE_TYPE_DISCRETE ;
 scalar_t__ V4L2_PIX_FMT_JPEG ;
 scalar_t__ V4L2_PIX_FMT_MJPEG ;
 TYPE_2__* cpia2_framesizes ;

__attribute__((used)) static int cpia2_enum_framesizes(struct file *file, void *fh,
      struct v4l2_frmsizeenum *fsize)
{

 if (fsize->pixel_format != V4L2_PIX_FMT_MJPEG &&
     fsize->pixel_format != V4L2_PIX_FMT_JPEG)
  return -EINVAL;
 if (fsize->index >= ARRAY_SIZE(cpia2_framesizes))
  return -EINVAL;
 fsize->type = V4L2_FRMSIZE_TYPE_DISCRETE;
 fsize->discrete.width = cpia2_framesizes[fsize->index].width;
 fsize->discrete.height = cpia2_framesizes[fsize->index].height;

 return 0;
}
