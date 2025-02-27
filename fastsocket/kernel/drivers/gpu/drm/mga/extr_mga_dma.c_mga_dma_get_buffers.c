
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int dummy; } ;
struct drm_dma {int granted_count; int request_count; int * request_sizes; int * request_indices; } ;
struct drm_device {int dummy; } ;
struct drm_buf {int total; int idx; struct drm_file* file_priv; } ;


 scalar_t__ DRM_COPY_TO_USER (int *,int *,int) ;
 int EAGAIN ;
 int EFAULT ;
 struct drm_buf* mga_freelist_get (struct drm_device*) ;

__attribute__((used)) static int mga_dma_get_buffers(struct drm_device *dev,
          struct drm_file *file_priv, struct drm_dma *d)
{
 struct drm_buf *buf;
 int i;

 for (i = d->granted_count; i < d->request_count; i++) {
  buf = mga_freelist_get(dev);
  if (!buf)
   return -EAGAIN;

  buf->file_priv = file_priv;

  if (DRM_COPY_TO_USER(&d->request_indices[i],
         &buf->idx, sizeof(buf->idx)))
   return -EFAULT;
  if (DRM_COPY_TO_USER(&d->request_sizes[i],
         &buf->total, sizeof(buf->total)))
   return -EFAULT;

  d->granted_count++;
 }
 return 0;
}
