
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nv04_mode_state {int dummy; } ;
struct nouveau_drm {int device; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int chipset; } ;


 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int nouveau_hw_fix_bad_vpll (struct drm_device*,int) ;
 TYPE_1__* nv_device (int ) ;
 int nv_save_state_ext (struct drm_device*,int,struct nv04_mode_state*) ;
 int nv_save_state_palette (struct drm_device*,int,struct nv04_mode_state*) ;
 int nv_save_state_ramdac (struct drm_device*,int,struct nv04_mode_state*) ;
 int nv_save_state_vga (struct drm_device*,int,struct nv04_mode_state*) ;

void nouveau_hw_save_state(struct drm_device *dev, int head,
      struct nv04_mode_state *state)
{
 struct nouveau_drm *drm = nouveau_drm(dev);

 if (nv_device(drm->device)->chipset == 0x11)

  nouveau_hw_fix_bad_vpll(dev, head);
 nv_save_state_ramdac(dev, head, state);
 nv_save_state_vga(dev, head, state);
 nv_save_state_palette(dev, head, state);
 nv_save_state_ext(dev, head, state);
}
