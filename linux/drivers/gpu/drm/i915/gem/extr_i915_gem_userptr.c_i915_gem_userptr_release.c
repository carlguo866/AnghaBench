
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {int dummy; } ;


 int i915_gem_userptr_release__mm_struct (struct drm_i915_gem_object*) ;
 int i915_gem_userptr_release__mmu_notifier (struct drm_i915_gem_object*) ;

__attribute__((used)) static void
i915_gem_userptr_release(struct drm_i915_gem_object *obj)
{
 i915_gem_userptr_release__mmu_notifier(obj);
 i915_gem_userptr_release__mm_struct(obj);
}
