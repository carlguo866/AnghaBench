
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct video_device {int device_caps; } ;
struct v4l2_subdev_frame_interval {int interval; int member_0; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_3__ {int readbuffers; int timeperframe; int capability; } ;
struct TYPE_4__ {TYPE_1__ capture; } ;
struct v4l2_streamparm {scalar_t__ type; TYPE_2__ parm; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 int V4L2_CAP_READWRITE ;
 int V4L2_CAP_TIMEPERFRAME ;
 int g_frame_interval ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,struct v4l2_subdev_frame_interval*) ;
 scalar_t__ v4l2_subdev_has_op (struct v4l2_subdev*,int ,int ) ;
 int video ;

int v4l2_g_parm_cap(struct video_device *vdev,
      struct v4l2_subdev *sd, struct v4l2_streamparm *a)
{
 struct v4l2_subdev_frame_interval ival = { 0 };
 int ret;

 if (a->type != V4L2_BUF_TYPE_VIDEO_CAPTURE &&
     a->type != V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE)
  return -EINVAL;

 if (vdev->device_caps & V4L2_CAP_READWRITE)
  a->parm.capture.readbuffers = 2;
 if (v4l2_subdev_has_op(sd, video, g_frame_interval))
  a->parm.capture.capability = V4L2_CAP_TIMEPERFRAME;
 ret = v4l2_subdev_call(sd, video, g_frame_interval, &ival);
 if (!ret)
  a->parm.capture.timeperframe = ival.interval;
 return ret;
}
