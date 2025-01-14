
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int numerator; int denominator; } ;
struct TYPE_5__ {int readbuffers; TYPE_1__ timeperframe; } ;
struct TYPE_6__ {TYPE_2__ capture; } ;
struct v4l2_streamparm {scalar_t__ type; TYPE_3__ parm; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;

__attribute__((used)) static int rmi_f54_vidioc_g_parm(struct file *file, void *fh,
     struct v4l2_streamparm *a)
{
 if (a->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 a->parm.capture.readbuffers = 1;
 a->parm.capture.timeperframe.numerator = 1;
 a->parm.capture.timeperframe.denominator = 10;
 return 0;
}
