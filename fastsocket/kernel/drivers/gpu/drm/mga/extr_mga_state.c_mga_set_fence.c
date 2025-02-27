
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_2__ {int next_fence_to_post; } ;
typedef TYPE_1__ drm_mga_private_t ;


 int ADVANCE_DMA () ;
 int BEGIN_DMA (int) ;
 int DMA_BLOCK (int ,int,int ,int,int ,int,int ,int) ;
 int DMA_LOCALS ;
 int DRM_CURRENTPID ;
 int DRM_DEBUG (char*,int ) ;
 int DRM_ERROR (char*) ;
 int EINVAL ;
 int MGA_DMAPAD ;
 int MGA_SOFTRAP ;

__attribute__((used)) static int mga_set_fence(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 drm_mga_private_t *dev_priv = dev->dev_private;
 u32 *fence = data;
 DMA_LOCALS;

 if (!dev_priv) {
  DRM_ERROR("called with no initialization\n");
  return -EINVAL;
 }

 DRM_DEBUG("pid=%d\n", DRM_CURRENTPID);





 *fence = dev_priv->next_fence_to_post;
 dev_priv->next_fence_to_post++;

 BEGIN_DMA(1);
 DMA_BLOCK(MGA_DMAPAD, 0x00000000,
    MGA_DMAPAD, 0x00000000,
    MGA_DMAPAD, 0x00000000, MGA_SOFTRAP, 0x00000000);
 ADVANCE_DMA();

 return 0;
}
