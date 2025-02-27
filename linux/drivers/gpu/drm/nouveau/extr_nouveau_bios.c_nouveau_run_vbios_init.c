
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lvds_init_run; scalar_t__ last_script_invoc; } ;
struct TYPE_4__ {scalar_t__ crtchead; } ;
struct nvbios {int major_version; TYPE_1__ fp; scalar_t__ execute; TYPE_2__ state; } ;
struct nouveau_drm {struct nvbios vbios; } ;
struct drm_device {int dummy; } ;


 int load_nv17_hw_sequencer_ucode (struct drm_device*,struct nvbios*) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;

int
nouveau_run_vbios_init(struct drm_device *dev)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nvbios *bios = &drm->vbios;
 int ret = 0;


 bios->state.crtchead = 0;

 if (bios->major_version < 5)
  load_nv17_hw_sequencer_ucode(dev, bios);

 if (bios->execute) {
  bios->fp.last_script_invoc = 0;
  bios->fp.lvds_init_run = 0;
 }

 return ret;
}
