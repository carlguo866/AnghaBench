
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int DRM_DEBUG (char*) ;
 int LOCK_TEST_WITH_RETURN (struct drm_device*,struct drm_file*) ;
 int i810_dma_dispatch_swap (struct drm_device*) ;

__attribute__((used)) static int i810_swap_bufs(struct drm_device *dev, void *data,
     struct drm_file *file_priv)
{
 DRM_DEBUG("\n");

 LOCK_TEST_WITH_RETURN(dev, file_priv);

 i810_dma_dispatch_swap(dev);
 return 0;
}
