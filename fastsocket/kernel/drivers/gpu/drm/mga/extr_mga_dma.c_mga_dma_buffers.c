
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int dummy; } ;
struct drm_dma {scalar_t__ send_count; scalar_t__ request_count; scalar_t__ granted_count; } ;
struct drm_device_dma {scalar_t__ buf_count; } ;
struct drm_device {scalar_t__ dev_private; struct drm_device_dma* dma; } ;
typedef int drm_mga_private_t ;


 int DRM_CURRENTPID ;
 int DRM_ERROR (char*,int ,scalar_t__,...) ;
 int EINVAL ;
 int LOCK_TEST_WITH_RETURN (struct drm_device*,struct drm_file*) ;
 int WRAP_TEST_WITH_RETURN (int *) ;
 int mga_dma_get_buffers (struct drm_device*,struct drm_file*,struct drm_dma*) ;

int mga_dma_buffers(struct drm_device *dev, void *data,
      struct drm_file *file_priv)
{
 struct drm_device_dma *dma = dev->dma;
 drm_mga_private_t *dev_priv = (drm_mga_private_t *) dev->dev_private;
 struct drm_dma *d = data;
 int ret = 0;

 LOCK_TEST_WITH_RETURN(dev, file_priv);



 if (d->send_count != 0) {
  DRM_ERROR("Process %d trying to send %d buffers via drmDMA\n",
     DRM_CURRENTPID, d->send_count);
  return -EINVAL;
 }



 if (d->request_count < 0 || d->request_count > dma->buf_count) {
  DRM_ERROR("Process %d trying to get %d buffers (of %d max)\n",
     DRM_CURRENTPID, d->request_count, dma->buf_count);
  return -EINVAL;
 }

 WRAP_TEST_WITH_RETURN(dev_priv);

 d->granted_count = 0;

 if (d->request_count)
  ret = mga_dma_get_buffers(dev, file_priv, d);

 return ret;
}
