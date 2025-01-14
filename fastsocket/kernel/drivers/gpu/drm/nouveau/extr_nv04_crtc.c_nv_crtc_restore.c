
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct nouveau_crtc {int index; int last_dpms; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct TYPE_6__ {TYPE_1__* crtc_reg; } ;
struct TYPE_5__ {TYPE_3__ saved_reg; } ;
struct TYPE_4__ {int * CRTC; } ;


 int NVSetOwner (struct drm_device*,int) ;
 size_t NV_CIO_CRE_21 ;
 int NV_DPMS_CLEARED ;
 struct nouveau_crtc* nouveau_crtc (struct drm_crtc*) ;
 int nouveau_hw_load_state (struct drm_device*,int,TYPE_3__*) ;
 TYPE_2__* nv04_display (struct drm_device*) ;
 int nv_lock_vga_crtc_shadow (struct drm_device*,int,int ) ;
 scalar_t__ nv_two_heads (struct drm_device*) ;

__attribute__((used)) static void nv_crtc_restore(struct drm_crtc *crtc)
{
 struct nouveau_crtc *nv_crtc = nouveau_crtc(crtc);
 struct drm_device *dev = crtc->dev;
 int head = nv_crtc->index;
 uint8_t saved_cr21 = nv04_display(dev)->saved_reg.crtc_reg[head].CRTC[NV_CIO_CRE_21];

 if (nv_two_heads(crtc->dev))
  NVSetOwner(crtc->dev, head);

 nouveau_hw_load_state(crtc->dev, head, &nv04_display(dev)->saved_reg);
 nv_lock_vga_crtc_shadow(crtc->dev, head, saved_cr21);

 nv_crtc->last_dpms = NV_DPMS_CLEARED;
}
