
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct TYPE_3__ {int entity; } ;
struct cio2_queue {TYPE_1__ vdev; int sensor; } ;
struct cio2_device {int streaming; TYPE_2__* pci_dev; } ;
struct TYPE_4__ {int dev; int irq; } ;


 int VB2_BUF_STATE_ERROR ;
 int cio2_hw_exit (struct cio2_device*,struct cio2_queue*) ;
 int cio2_vb2_return_all_buffers (struct cio2_queue*,int ) ;
 int dev_err (int *,char*) ;
 int media_pipeline_stop (int *) ;
 int pm_runtime_put (int *) ;
 int s_stream ;
 int synchronize_irq (int ) ;
 scalar_t__ v4l2_subdev_call (int ,int ,int ,int ) ;
 struct cio2_device* vb2_get_drv_priv (struct vb2_queue*) ;
 struct cio2_queue* vb2q_to_cio2_queue (struct vb2_queue*) ;
 int video ;

__attribute__((used)) static void cio2_vb2_stop_streaming(struct vb2_queue *vq)
{
 struct cio2_queue *q = vb2q_to_cio2_queue(vq);
 struct cio2_device *cio2 = vb2_get_drv_priv(vq);

 if (v4l2_subdev_call(q->sensor, video, s_stream, 0))
  dev_err(&cio2->pci_dev->dev,
   "failed to stop sensor streaming\n");

 cio2_hw_exit(cio2, q);
 synchronize_irq(cio2->pci_dev->irq);
 cio2_vb2_return_all_buffers(q, VB2_BUF_STATE_ERROR);
 media_pipeline_stop(&q->vdev.entity);
 pm_runtime_put(&cio2->pci_dev->dev);
 cio2->streaming = 0;
}
