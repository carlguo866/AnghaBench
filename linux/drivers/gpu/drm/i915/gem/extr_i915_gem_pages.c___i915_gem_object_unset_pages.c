
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sg_table {int dummy; } ;
struct TYPE_3__ {scalar_t__ sg; scalar_t__ phys; } ;
struct TYPE_4__ {TYPE_1__ page_sizes; int * mapping; int pages; } ;
struct drm_i915_gem_object {TYPE_2__ mm; } ;


 scalar_t__ IS_ERR_OR_NULL (struct sg_table*) ;
 int __i915_gem_object_reset_page_iter (struct drm_i915_gem_object*) ;
 struct sg_table* fetch_and_zero (int *) ;
 int i915_gem_object_make_unshrinkable (struct drm_i915_gem_object*) ;
 scalar_t__ is_vmalloc_addr (void*) ;
 int kmap_to_page (void*) ;
 int kunmap (int ) ;
 void* page_mask_bits (int *) ;
 int vunmap (void*) ;

struct sg_table *
__i915_gem_object_unset_pages(struct drm_i915_gem_object *obj)
{
 struct sg_table *pages;

 pages = fetch_and_zero(&obj->mm.pages);
 if (IS_ERR_OR_NULL(pages))
  return pages;

 i915_gem_object_make_unshrinkable(obj);

 if (obj->mm.mapping) {
  void *ptr;

  ptr = page_mask_bits(obj->mm.mapping);
  if (is_vmalloc_addr(ptr))
   vunmap(ptr);
  else
   kunmap(kmap_to_page(ptr));

  obj->mm.mapping = ((void*)0);
 }

 __i915_gem_object_reset_page_iter(obj);
 obj->mm.page_sizes.phys = obj->mm.page_sizes.sg = 0;

 return pages;
}
