
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_vtg {int dummy; } ;
struct sti_private {struct sti_compositor* compo; } ;
struct sti_compositor {struct sti_vtg** vtg; struct notifier_block* vtg_vblank_nb; } ;
struct notifier_block {int dummy; } ;
struct drm_device {struct sti_private* dev_private; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 scalar_t__ sti_vtg_unregister_client (struct sti_vtg*,struct notifier_block*) ;

void sti_crtc_disable_vblank(struct drm_device *drm_dev, unsigned int pipe)
{
 struct sti_private *priv = drm_dev->dev_private;
 struct sti_compositor *compo = priv->compo;
 struct notifier_block *vtg_vblank_nb = &compo->vtg_vblank_nb[pipe];
 struct sti_vtg *vtg = compo->vtg[pipe];

 DRM_DEBUG_DRIVER("\n");

 if (sti_vtg_unregister_client(vtg, vtg_vblank_nb))
  DRM_DEBUG_DRIVER("Warning: cannot unregister VTG notifier\n");
}
