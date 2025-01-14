
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ gemfs; } ;
struct drm_i915_private {TYPE_1__ mm; int drm; } ;
struct drm_gem_object {struct file* filp; } ;


 scalar_t__ IS_ERR (struct file*) ;
 int PTR_ERR (struct file*) ;
 unsigned long VM_NORESERVE ;
 int drm_gem_private_object_init (int *,struct drm_gem_object*,size_t) ;
 struct file* shmem_file_setup (char*,size_t,unsigned long) ;
 struct file* shmem_file_setup_with_mnt (scalar_t__,char*,size_t,unsigned long) ;

__attribute__((used)) static int create_shmem(struct drm_i915_private *i915,
   struct drm_gem_object *obj,
   size_t size)
{
 unsigned long flags = VM_NORESERVE;
 struct file *filp;

 drm_gem_private_object_init(&i915->drm, obj, size);

 if (i915->mm.gemfs)
  filp = shmem_file_setup_with_mnt(i915->mm.gemfs, "i915", size,
       flags);
 else
  filp = shmem_file_setup("i915", size, flags);
 if (IS_ERR(filp))
  return PTR_ERR(filp);

 obj->filp = filp;
 return 0;
}
