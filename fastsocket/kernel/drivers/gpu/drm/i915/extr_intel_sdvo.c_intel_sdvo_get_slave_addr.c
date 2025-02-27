
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sdvo_device_mapping {int slave_addr; } ;
struct intel_sdvo {scalar_t__ is_sdvob; } ;
struct drm_i915_private {struct sdvo_device_mapping* sdvo_mappings; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;



__attribute__((used)) static u8
intel_sdvo_get_slave_addr(struct drm_device *dev, struct intel_sdvo *sdvo)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct sdvo_device_mapping *my_mapping, *other_mapping;

 if (sdvo->is_sdvob) {
  my_mapping = &dev_priv->sdvo_mappings[0];
  other_mapping = &dev_priv->sdvo_mappings[1];
 } else {
  my_mapping = &dev_priv->sdvo_mappings[1];
  other_mapping = &dev_priv->sdvo_mappings[0];
 }


 if (my_mapping->slave_addr)
  return my_mapping->slave_addr;




 if (other_mapping->slave_addr) {
  if (other_mapping->slave_addr == 0x70)
   return 0x72;
  else
   return 0x70;
 }




 if (sdvo->is_sdvob)
  return 0x70;
 else
  return 0x72;
}
