
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct drm_device_dma {int buf_count; struct drm_buf** buflist; } ;
struct drm_device {TYPE_1__* dev_private; struct drm_device_dma* dma; } ;
struct drm_buf {scalar_t__ pending; TYPE_2__* dev_private; int file_priv; } ;
struct TYPE_3__ {int usec_timeout; } ;
typedef TYPE_1__ drm_r128_private_t ;
struct TYPE_4__ {scalar_t__ age; } ;
typedef TYPE_2__ drm_r128_buf_priv_t ;


 int DRM_DEBUG (char*) ;
 int DRM_UDELAY (int) ;
 int R128_LAST_DISPATCH_REG ;
 scalar_t__ R128_READ (int ) ;

__attribute__((used)) static struct drm_buf *r128_freelist_get(struct drm_device * dev)
{
 struct drm_device_dma *dma = dev->dma;
 drm_r128_private_t *dev_priv = dev->dev_private;
 drm_r128_buf_priv_t *buf_priv;
 struct drm_buf *buf;
 int i, t;



 for (i = 0; i < dma->buf_count; i++) {
  buf = dma->buflist[i];
  buf_priv = buf->dev_private;
  if (!buf->file_priv)
   return buf;
 }

 for (t = 0; t < dev_priv->usec_timeout; t++) {
  u32 done_age = R128_READ(R128_LAST_DISPATCH_REG);

  for (i = 0; i < dma->buf_count; i++) {
   buf = dma->buflist[i];
   buf_priv = buf->dev_private;
   if (buf->pending && buf_priv->age <= done_age) {



    buf->pending = 0;
    return buf;
   }
  }
  DRM_UDELAY(1);
 }

 DRM_DEBUG("returning NULL!\n");
 return ((void*)0);
}
