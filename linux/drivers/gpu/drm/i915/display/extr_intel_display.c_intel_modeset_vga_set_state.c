
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct drm_i915_private {int bridge_dev; } ;


 int DRM_ERROR (char*) ;
 int EIO ;
 int INTEL_GEN (struct drm_i915_private*) ;
 unsigned int INTEL_GMCH_CTRL ;
 int INTEL_GMCH_VGA_DISABLE ;
 unsigned int SNB_GMCH_CTRL ;
 scalar_t__ pci_read_config_word (int ,unsigned int,int*) ;
 scalar_t__ pci_write_config_word (int ,unsigned int,int) ;

int intel_modeset_vga_set_state(struct drm_i915_private *dev_priv, bool state)
{
 unsigned reg = INTEL_GEN(dev_priv) >= 6 ? SNB_GMCH_CTRL : INTEL_GMCH_CTRL;
 u16 gmch_ctrl;

 if (pci_read_config_word(dev_priv->bridge_dev, reg, &gmch_ctrl)) {
  DRM_ERROR("failed to read control word\n");
  return -EIO;
 }

 if (!!(gmch_ctrl & INTEL_GMCH_VGA_DISABLE) == !state)
  return 0;

 if (state)
  gmch_ctrl &= ~INTEL_GMCH_VGA_DISABLE;
 else
  gmch_ctrl |= INTEL_GMCH_VGA_DISABLE;

 if (pci_write_config_word(dev_priv->bridge_dev, reg, gmch_ctrl)) {
  DRM_ERROR("failed to write control word\n");
  return -EIO;
 }

 return 0;
}
