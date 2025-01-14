
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_device_dma {int buf_count; struct drm_buf** buflist; } ;
struct drm_device {struct drm_device_dma* dma; TYPE_2__* dev_private; } ;
struct drm_buf {TYPE_3__* dev_private; } ;
struct TYPE_4__ {scalar_t__ Size; } ;
struct TYPE_5__ {TYPE_1__ ring; } ;
typedef TYPE_2__ drm_i810_private_t ;
struct TYPE_6__ {int in_use; } ;
typedef TYPE_3__ drm_i810_buf_priv_t ;


 int ADVANCE_LP_RING () ;
 int BEGIN_LP_RING (int) ;
 int CMD_REPORT_HEAD ;
 int DRM_DEBUG (char*) ;
 int I810_BUF_CLIENT ;
 int I810_BUF_FREE ;
 int I810_BUF_HARDWARE ;
 int OUT_RING (int ) ;
 int RING_LOCALS ;
 int cmpxchg (int ,int,int ) ;
 int i810_kernel_lost_context (struct drm_device*) ;
 int i810_wait_ring (struct drm_device*,scalar_t__) ;

__attribute__((used)) static int i810_flush_queue(struct drm_device *dev)
{
 drm_i810_private_t *dev_priv = dev->dev_private;
 struct drm_device_dma *dma = dev->dma;
 int i, ret = 0;
 RING_LOCALS;

 i810_kernel_lost_context(dev);

 BEGIN_LP_RING(2);
 OUT_RING(CMD_REPORT_HEAD);
 OUT_RING(0);
 ADVANCE_LP_RING();

 i810_wait_ring(dev, dev_priv->ring.Size - 8);

 for (i = 0; i < dma->buf_count; i++) {
  struct drm_buf *buf = dma->buflist[i];
  drm_i810_buf_priv_t *buf_priv = buf->dev_private;

  int used = cmpxchg(buf_priv->in_use, I810_BUF_HARDWARE,
       I810_BUF_FREE);

  if (used == I810_BUF_HARDWARE)
   DRM_DEBUG("reclaimed from HARDWARE\n");
  if (used == I810_BUF_CLIENT)
   DRM_DEBUG("still on client\n");
 }

 return ret;
}
