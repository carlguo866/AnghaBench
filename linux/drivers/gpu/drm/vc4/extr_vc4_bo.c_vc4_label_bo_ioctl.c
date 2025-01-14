
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_dev {int bo_lock; } ;
struct drm_vc4_label_bo {int handle; scalar_t__ len; int name; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int DRM_ERROR (char*,int ) ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 scalar_t__ IS_ERR (char*) ;
 int PTR_ERR (char*) ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int ) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 int kfree (char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 char* strndup_user (int ,scalar_t__) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;
 int u64_to_user_ptr (int ) ;
 int vc4_bo_set_label (struct drm_gem_object*,int) ;
 int vc4_get_user_label (struct vc4_dev*,char*) ;

int vc4_label_bo_ioctl(struct drm_device *dev, void *data,
         struct drm_file *file_priv)
{
 struct vc4_dev *vc4 = to_vc4_dev(dev);
 struct drm_vc4_label_bo *args = data;
 char *name;
 struct drm_gem_object *gem_obj;
 int ret = 0, label;

 if (!args->len)
  return -EINVAL;

 name = strndup_user(u64_to_user_ptr(args->name), args->len + 1);
 if (IS_ERR(name))
  return PTR_ERR(name);

 gem_obj = drm_gem_object_lookup(file_priv, args->handle);
 if (!gem_obj) {
  DRM_ERROR("Failed to look up GEM BO %d\n", args->handle);
  kfree(name);
  return -ENOENT;
 }

 mutex_lock(&vc4->bo_lock);
 label = vc4_get_user_label(vc4, name);
 if (label != -1)
  vc4_bo_set_label(gem_obj, label);
 else
  ret = -ENOMEM;
 mutex_unlock(&vc4->bo_lock);

 drm_gem_object_put_unlocked(gem_obj);

 return ret;
}
