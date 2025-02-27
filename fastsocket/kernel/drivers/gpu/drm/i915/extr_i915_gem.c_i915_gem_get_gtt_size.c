
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int gen; } ;


 int I915_TILING_NONE ;
 TYPE_1__* INTEL_INFO (struct drm_device*) ;

uint32_t
i915_gem_get_gtt_size(struct drm_device *dev, uint32_t size, int tiling_mode)
{
 uint32_t gtt_size;

 if (INTEL_INFO(dev)->gen >= 4 ||
     tiling_mode == I915_TILING_NONE)
  return size;


 if (INTEL_INFO(dev)->gen == 3)
  gtt_size = 1024*1024;
 else
  gtt_size = 512*1024;

 while (gtt_size < size)
  gtt_size <<= 1;

 return gtt_size;
}
