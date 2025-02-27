
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
struct drm_i915_gem_object {int dummy; } ;


 scalar_t__ IS_ERR (struct drm_i915_gem_object*) ;
 int PTR_ERR (struct drm_i915_gem_object*) ;
 int create_mmap_offset (struct drm_i915_gem_object*) ;
 struct drm_i915_gem_object* i915_gem_object_create_internal (struct drm_i915_private*,unsigned long) ;
 int i915_gem_object_put (struct drm_i915_gem_object*) ;

__attribute__((used)) static bool assert_mmap_offset(struct drm_i915_private *i915,
          unsigned long size,
          int expected)
{
 struct drm_i915_gem_object *obj;
 int err;

 obj = i915_gem_object_create_internal(i915, size);
 if (IS_ERR(obj))
  return PTR_ERR(obj);

 err = create_mmap_offset(obj);
 i915_gem_object_put(obj);

 return err == expected;
}
