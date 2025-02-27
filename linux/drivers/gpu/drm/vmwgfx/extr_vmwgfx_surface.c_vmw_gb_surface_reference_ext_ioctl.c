
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_vmw_gb_surface_ref_ext_rep {int dummy; } ;
struct drm_vmw_surface_arg {int dummy; } ;
union drm_vmw_gb_surface_reference_ext_arg {struct drm_vmw_gb_surface_ref_ext_rep rep; struct drm_vmw_surface_arg req; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int vmw_gb_surface_reference_internal (struct drm_device*,struct drm_vmw_surface_arg*,struct drm_vmw_gb_surface_ref_ext_rep*,struct drm_file*) ;

int vmw_gb_surface_reference_ext_ioctl(struct drm_device *dev, void *data,
       struct drm_file *file_priv)
{
 union drm_vmw_gb_surface_reference_ext_arg *arg =
     (union drm_vmw_gb_surface_reference_ext_arg *)data;
 struct drm_vmw_surface_arg *req = &arg->req;
 struct drm_vmw_gb_surface_ref_ext_rep *rep = &arg->rep;

 return vmw_gb_surface_reference_internal(dev, req, rep, file_priv);
}
