
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpif_fh {struct channel_obj* channel; } ;
struct video_obj {unsigned int output_id; } ;
struct file {int dummy; } ;
struct common_obj {int lock; scalar_t__ started; } ;
struct channel_obj {struct common_obj* common; struct video_obj video; } ;
struct TYPE_2__ {int v4l2_dev; } ;


 int EBUSY ;
 int ERESTARTSYS ;
 size_t VPIF_VIDEO_INDEX ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int s_routing ;
 int v4l2_device_call_until_err (int *,int,int ,int ,int ,unsigned int,int ) ;
 int video ;
 int vpif_err (char*) ;
 TYPE_1__ vpif_obj ;

__attribute__((used)) static int vpif_s_output(struct file *file, void *priv, unsigned int i)
{
 struct vpif_fh *fh = priv;
 struct channel_obj *ch = fh->channel;
 struct video_obj *vid_ch = &ch->video;
 struct common_obj *common = &ch->common[VPIF_VIDEO_INDEX];
 int ret = 0;

 if (mutex_lock_interruptible(&common->lock))
  return -ERESTARTSYS;

 if (common->started) {
  vpif_err("Streaming in progress\n");
  ret = -EBUSY;
  goto s_output_exit;
 }

 ret = v4l2_device_call_until_err(&vpif_obj.v4l2_dev, 1, video,
       s_routing, 0, i, 0);

 if (ret < 0)
  vpif_err("Failed to set output standard\n");

 vid_ch->output_id = i;

s_output_exit:
 mutex_unlock(&common->lock);
 return ret;
}
