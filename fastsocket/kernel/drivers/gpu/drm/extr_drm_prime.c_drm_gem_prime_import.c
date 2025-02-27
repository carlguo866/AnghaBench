
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sg_table {struct sg_table* import_attach; struct drm_device* dev; } ;
struct drm_gem_object {struct drm_gem_object* import_attach; struct drm_device* dev; } ;
struct drm_device {TYPE_1__* driver; int dev; } ;
struct dma_buf_attachment {struct dma_buf_attachment* import_attach; struct drm_device* dev; } ;
struct dma_buf {int size; struct sg_table* priv; int * ops; } ;
struct TYPE_2__ {struct sg_table* (* gem_prime_import_sg_table ) (struct drm_device*,int ,struct sg_table*) ;} ;


 int DMA_BIDIRECTIONAL ;
 int EINVAL ;
 struct sg_table* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct sg_table*) ;
 scalar_t__ IS_ERR_OR_NULL (struct sg_table*) ;
 int PTR_ERR (struct sg_table*) ;
 struct sg_table* dma_buf_attach (struct dma_buf*,int ) ;
 int dma_buf_detach (struct dma_buf*,struct sg_table*) ;
 struct sg_table* dma_buf_map_attachment (struct sg_table*,int ) ;
 int dma_buf_put (struct dma_buf*) ;
 int dma_buf_unmap_attachment (struct sg_table*,struct sg_table*,int ) ;
 int drm_gem_object_reference (struct sg_table*) ;
 int drm_gem_prime_dmabuf_ops ;
 int get_dma_buf (struct dma_buf*) ;
 struct sg_table* stub1 (struct drm_device*,int ,struct sg_table*) ;

struct drm_gem_object *drm_gem_prime_import(struct drm_device *dev,
         struct dma_buf *dma_buf)
{
 struct dma_buf_attachment *attach;
 struct sg_table *sgt;
 struct drm_gem_object *obj;
 int ret;

 if (!dev->driver->gem_prime_import_sg_table)
  return ERR_PTR(-EINVAL);

 if (dma_buf->ops == &drm_gem_prime_dmabuf_ops) {
  obj = dma_buf->priv;
  if (obj->dev == dev) {




   drm_gem_object_reference(obj);
   return obj;
  }
 }

 attach = dma_buf_attach(dma_buf, dev->dev);
 if (IS_ERR(attach))
  return ERR_PTR(PTR_ERR(attach));

 get_dma_buf(dma_buf);

 sgt = dma_buf_map_attachment(attach, DMA_BIDIRECTIONAL);
 if (IS_ERR_OR_NULL(sgt)) {
  ret = PTR_ERR(sgt);
  goto fail_detach;
 }

 obj = dev->driver->gem_prime_import_sg_table(dev, dma_buf->size, sgt);
 if (IS_ERR(obj)) {
  ret = PTR_ERR(obj);
  goto fail_unmap;
 }

 obj->import_attach = attach;

 return obj;

fail_unmap:
 dma_buf_unmap_attachment(attach, sgt, DMA_BIDIRECTIONAL);
fail_detach:
 dma_buf_detach(dma_buf, attach);
 dma_buf_put(dma_buf);

 return ERR_PTR(ret);
}
