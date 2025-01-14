
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_mode_fb_cmd2 {int * handles; } ;
struct drm_gem_object {scalar_t__ import_attach; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int DRM_DEBUG_KMS (char*) ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 struct drm_framebuffer* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int dev_err (int *,char*,int ) ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int ) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 int kfree (struct drm_framebuffer*) ;
 struct drm_framebuffer* kzalloc (int,int ) ;
 int radeon_framebuffer_init (struct drm_device*,struct drm_framebuffer*,struct drm_mode_fb_cmd2 const*,struct drm_gem_object*) ;

__attribute__((used)) static struct drm_framebuffer *
radeon_user_framebuffer_create(struct drm_device *dev,
          struct drm_file *file_priv,
          const struct drm_mode_fb_cmd2 *mode_cmd)
{
 struct drm_gem_object *obj;
 struct drm_framebuffer *fb;
 int ret;

 obj = drm_gem_object_lookup(file_priv, mode_cmd->handles[0]);
 if (obj == ((void*)0)) {
  dev_err(&dev->pdev->dev, "No GEM object associated to handle 0x%08X, "
   "can't create framebuffer\n", mode_cmd->handles[0]);
  return ERR_PTR(-ENOENT);
 }


 if (obj->import_attach) {
  DRM_DEBUG_KMS("Cannot create framebuffer from imported dma_buf\n");
  return ERR_PTR(-EINVAL);
 }

 fb = kzalloc(sizeof(*fb), GFP_KERNEL);
 if (fb == ((void*)0)) {
  drm_gem_object_put_unlocked(obj);
  return ERR_PTR(-ENOMEM);
 }

 ret = radeon_framebuffer_init(dev, fb, mode_cmd, obj);
 if (ret) {
  kfree(fb);
  drm_gem_object_put_unlocked(obj);
  return ERR_PTR(ret);
 }

 return fb;
}
