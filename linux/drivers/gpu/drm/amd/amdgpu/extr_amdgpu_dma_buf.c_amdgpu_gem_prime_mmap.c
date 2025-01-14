
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vm_area_struct {unsigned int vm_end; unsigned int vm_start; int vm_pgoff; TYPE_3__* vm_file; } ;
struct drm_gem_object {int vma_node; } ;
struct TYPE_5__ {int bdev; } ;
struct amdgpu_device {TYPE_2__ mman; } ;
struct TYPE_4__ {int ttm; int bdev; } ;
struct amdgpu_bo {int flags; TYPE_1__ tbo; } ;
struct TYPE_6__ {int private_data; } ;


 int AMDGPU_GEM_CREATE_NO_CPU_ACCESS ;
 int EINVAL ;
 int ENODEV ;
 int EPERM ;
 int PAGE_SHIFT ;
 int amdgpu_bo_mmap_offset (struct amdgpu_bo*) ;
 unsigned int amdgpu_bo_size (struct amdgpu_bo*) ;
 struct amdgpu_device* amdgpu_ttm_adev (int ) ;
 scalar_t__ amdgpu_ttm_tt_get_usermm (int ) ;
 int drm_vma_node_allow (int *,int ) ;
 int drm_vma_node_revoke (int *,int ) ;
 struct amdgpu_bo* gem_to_amdgpu_bo (struct drm_gem_object*) ;
 int ttm_bo_mmap (TYPE_3__*,struct vm_area_struct*,int *) ;

int amdgpu_gem_prime_mmap(struct drm_gem_object *obj,
     struct vm_area_struct *vma)
{
 struct amdgpu_bo *bo = gem_to_amdgpu_bo(obj);
 struct amdgpu_device *adev = amdgpu_ttm_adev(bo->tbo.bdev);
 unsigned asize = amdgpu_bo_size(bo);
 int ret;

 if (!vma->vm_file)
  return -ENODEV;

 if (adev == ((void*)0))
  return -ENODEV;


 if (asize < vma->vm_end - vma->vm_start)
  return -EINVAL;

 if (amdgpu_ttm_tt_get_usermm(bo->tbo.ttm) ||
     (bo->flags & AMDGPU_GEM_CREATE_NO_CPU_ACCESS)) {
  return -EPERM;
 }
 vma->vm_pgoff += amdgpu_bo_mmap_offset(bo) >> PAGE_SHIFT;


 ret = drm_vma_node_allow(&obj->vma_node, vma->vm_file->private_data);
 if (ret)
  return ret;

 ret = ttm_bo_mmap(vma->vm_file, vma, &adev->mman.bdev);
 drm_vma_node_revoke(&obj->vma_node, vma->vm_file->private_data);

 return ret;
}
