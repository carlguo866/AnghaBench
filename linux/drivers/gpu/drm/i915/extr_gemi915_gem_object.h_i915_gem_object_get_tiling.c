
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {unsigned int tiling_and_stride; } ;


 unsigned int TILING_MASK ;

__attribute__((used)) static inline unsigned int
i915_gem_object_get_tiling(const struct drm_i915_gem_object *obj)
{
 return obj->tiling_and_stride & TILING_MASK;
}
