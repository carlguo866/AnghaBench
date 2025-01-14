
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int dummy; } ;
struct xen_gem_object {struct drm_gem_object base; } ;
struct drm_device {int dummy; } ;


 struct drm_gem_object* ERR_CAST (struct xen_gem_object*) ;
 scalar_t__ IS_ERR_OR_NULL (struct xen_gem_object*) ;
 struct xen_gem_object* gem_create (struct drm_device*,size_t) ;

struct drm_gem_object *xen_drm_front_gem_create(struct drm_device *dev,
      size_t size)
{
 struct xen_gem_object *xen_obj;

 xen_obj = gem_create(dev, size);
 if (IS_ERR_OR_NULL(xen_obj))
  return ERR_CAST(xen_obj);

 return &xen_obj->base;
}
