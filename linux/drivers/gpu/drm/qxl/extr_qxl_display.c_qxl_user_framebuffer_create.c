
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mode_fb_cmd2 {int dummy; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 struct drm_framebuffer* drm_gem_fb_create_with_funcs (struct drm_device*,struct drm_file*,struct drm_mode_fb_cmd2 const*,int *) ;
 int qxl_fb_funcs ;

__attribute__((used)) static struct drm_framebuffer *
qxl_user_framebuffer_create(struct drm_device *dev,
       struct drm_file *file_priv,
       const struct drm_mode_fb_cmd2 *mode_cmd)
{
 return drm_gem_fb_create_with_funcs(dev, file_priv, mode_cmd,
         &qxl_fb_funcs);
}
