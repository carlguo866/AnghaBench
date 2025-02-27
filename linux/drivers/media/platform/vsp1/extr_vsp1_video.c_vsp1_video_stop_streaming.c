
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int entity; } ;
struct vsp1_video {int pipe_index; TYPE_4__ video; TYPE_3__* vsp1; int irqlock; TYPE_2__* rwpf; } ;
struct vsp1_pipeline {int buffers_ready; scalar_t__ stream_count; scalar_t__ num_inputs; int lock; } ;
struct vb2_queue {int dummy; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_5__ {struct vsp1_pipeline* pipe; } ;
struct TYPE_6__ {TYPE_1__ entity; } ;


 int ETIMEDOUT ;
 int dev_err (int ,char*) ;
 int media_pipeline_stop (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct vsp1_video* vb2_get_drv_priv (struct vb2_queue*) ;
 int vsp1_pipeline_stop (struct vsp1_pipeline*) ;
 int vsp1_video_cleanup_pipeline (struct vsp1_pipeline*) ;
 int vsp1_video_pipeline_put (struct vsp1_pipeline*) ;
 int vsp1_video_release_buffers (struct vsp1_video*) ;

__attribute__((used)) static void vsp1_video_stop_streaming(struct vb2_queue *vq)
{
 struct vsp1_video *video = vb2_get_drv_priv(vq);
 struct vsp1_pipeline *pipe = video->rwpf->entity.pipe;
 unsigned long flags;
 int ret;





 spin_lock_irqsave(&video->irqlock, flags);
 pipe->buffers_ready &= ~(1 << video->pipe_index);
 spin_unlock_irqrestore(&video->irqlock, flags);

 mutex_lock(&pipe->lock);
 if (--pipe->stream_count == pipe->num_inputs) {

  ret = vsp1_pipeline_stop(pipe);
  if (ret == -ETIMEDOUT)
   dev_err(video->vsp1->dev, "pipeline stop timeout\n");

  vsp1_video_cleanup_pipeline(pipe);
 }
 mutex_unlock(&pipe->lock);

 media_pipeline_stop(&video->video.entity);
 vsp1_video_release_buffers(video);
 vsp1_video_pipeline_put(pipe);
}
