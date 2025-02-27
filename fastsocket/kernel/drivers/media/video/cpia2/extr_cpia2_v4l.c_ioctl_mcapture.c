
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct video_mmap {size_t frame; int height; int width; } ;
struct cpia2_fh {int prio; } ;
struct TYPE_7__ {int stream_mode; } ;
struct TYPE_5__ {int height; int width; } ;
struct TYPE_8__ {TYPE_3__ camera_state; TYPE_1__ roi; } ;
struct camera_data {size_t num_frames; int video_size; TYPE_4__ params; TYPE_2__* buffers; int prio; } ;
struct TYPE_6__ {scalar_t__ status; } ;


 int EINVAL ;
 scalar_t__ FRAME_EMPTY ;
 scalar_t__ FRAME_READING ;
 int V4L2_PRIORITY_RECORD ;
 int cpia2_match_video_size (int ,int ) ;
 int cpia2_set_format (struct camera_data*) ;
 int cpia2_usb_stream_start (struct camera_data*,int ) ;
 int sync (struct camera_data*,size_t) ;
 int v4l2_prio_change (int *,int *,int ) ;

__attribute__((used)) static int ioctl_mcapture(void *arg, struct camera_data *cam,
     struct cpia2_fh *fh)
{
 struct video_mmap *vm;
 int video_size, err;
 vm = arg;

 if (vm->frame < 0 || vm->frame >= cam->num_frames)
  return -EINVAL;


 video_size = cpia2_match_video_size(vm->width, vm->height);
 if (cam->video_size < 0) {
  return -EINVAL;
 }


 err = v4l2_prio_change(&cam->prio, &fh->prio, V4L2_PRIORITY_RECORD);
 if(err != 0)
  return err;

 if (video_size != cam->video_size) {
  cam->video_size = video_size;
  cam->params.roi.width = vm->width;
  cam->params.roi.height = vm->height;
  cpia2_set_format(cam);
 }

 if (cam->buffers[vm->frame].status == FRAME_READING)
  if ((err=sync(cam, vm->frame)) < 0)
   return err;

 cam->buffers[vm->frame].status = FRAME_EMPTY;

 return cpia2_usb_stream_start(cam,cam->params.camera_state.stream_mode);
}
