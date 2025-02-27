
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int base; } ;
struct TYPE_5__ {int bdev; } ;
struct nouveau_drm {scalar_t__ fence; TYPE_2__ master; scalar_t__ channel; scalar_t__ cechan; TYPE_1__ ttm; } ;
struct TYPE_7__ {scalar_t__ num_crtc; } ;
struct drm_device {TYPE_3__ mode_config; } ;
struct TYPE_8__ {int (* resume ) (struct nouveau_drm*) ;int (* suspend ) (struct nouveau_drm*) ;} ;


 int ENOMEM ;
 int NV_DEBUG (struct nouveau_drm*,char*) ;
 int TTM_PL_VRAM ;
 int nouveau_channel_idle (scalar_t__) ;
 int nouveau_display_resume (struct drm_device*,int) ;
 int nouveau_display_suspend (struct drm_device*,int) ;
 int nouveau_dmem_suspend (struct nouveau_drm*) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int nouveau_fbcon_set_suspend (struct drm_device*,int) ;
 TYPE_4__* nouveau_fence (struct nouveau_drm*) ;
 int nouveau_led_suspend (struct drm_device*) ;
 int nouveau_svm_suspend (struct nouveau_drm*) ;
 int nvif_client_suspend (int *) ;
 int stub1 (struct nouveau_drm*) ;
 int stub2 (struct nouveau_drm*) ;
 int ttm_bo_evict_mm (int *,int ) ;

__attribute__((used)) static int
nouveau_do_suspend(struct drm_device *dev, bool runtime)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 int ret;

 nouveau_svm_suspend(drm);
 nouveau_dmem_suspend(drm);
 nouveau_led_suspend(dev);

 if (dev->mode_config.num_crtc) {
  NV_DEBUG(drm, "suspending console...\n");
  nouveau_fbcon_set_suspend(dev, 1);
  NV_DEBUG(drm, "suspending display...\n");
  ret = nouveau_display_suspend(dev, runtime);
  if (ret)
   return ret;
 }

 NV_DEBUG(drm, "evicting buffers...\n");
 ttm_bo_evict_mm(&drm->ttm.bdev, TTM_PL_VRAM);

 NV_DEBUG(drm, "waiting for kernel channels to go idle...\n");
 if (drm->cechan) {
  ret = nouveau_channel_idle(drm->cechan);
  if (ret)
   goto fail_display;
 }

 if (drm->channel) {
  ret = nouveau_channel_idle(drm->channel);
  if (ret)
   goto fail_display;
 }

 NV_DEBUG(drm, "suspending fence...\n");
 if (drm->fence && nouveau_fence(drm)->suspend) {
  if (!nouveau_fence(drm)->suspend(drm)) {
   ret = -ENOMEM;
   goto fail_display;
  }
 }

 NV_DEBUG(drm, "suspending object tree...\n");
 ret = nvif_client_suspend(&drm->master.base);
 if (ret)
  goto fail_client;

 return 0;

fail_client:
 if (drm->fence && nouveau_fence(drm)->resume)
  nouveau_fence(drm)->resume(drm);

fail_display:
 if (dev->mode_config.num_crtc) {
  NV_DEBUG(drm, "resuming display...\n");
  nouveau_display_resume(dev, runtime);
 }
 return ret;
}
