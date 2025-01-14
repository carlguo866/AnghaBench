
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {TYPE_1__* dma; } ;
struct TYPE_2__ {int * bufs; } ;


 int DRM_MAX_ORDER ;
 int DRM_MEM_DRIVER ;
 int ENOMEM ;
 int M_NOWAIT ;
 int M_ZERO ;
 TYPE_1__* malloc (int,int ,int) ;
 int memset (int *,int ,int) ;

int drm_dma_setup(struct drm_device *dev)
{
 int i;

 dev->dma = malloc(sizeof(*dev->dma), DRM_MEM_DRIVER, M_NOWAIT | M_ZERO);
 if (!dev->dma)
  return -ENOMEM;

 for (i = 0; i <= DRM_MAX_ORDER; i++)
  memset(&dev->dma->bufs[i], 0, sizeof(dev->dma->bufs[0]));

 return 0;
}
