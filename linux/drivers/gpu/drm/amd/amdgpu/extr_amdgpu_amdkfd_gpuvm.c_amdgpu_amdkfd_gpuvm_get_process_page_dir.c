
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {struct amdgpu_bo* bo; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
struct amdgpu_vm {int pd_phys_addr; TYPE_2__ root; } ;
struct amdgpu_device {scalar_t__ asic_type; } ;
struct TYPE_6__ {int bdev; } ;
struct amdgpu_bo {TYPE_3__ tbo; } ;


 int AMDGPU_GPU_PAGE_SHIFT ;
 scalar_t__ CHIP_VEGA10 ;
 struct amdgpu_device* amdgpu_ttm_adev (int ) ;

uint64_t amdgpu_amdkfd_gpuvm_get_process_page_dir(void *vm)
{
 struct amdgpu_vm *avm = (struct amdgpu_vm *)vm;
 struct amdgpu_bo *pd = avm->root.base.bo;
 struct amdgpu_device *adev = amdgpu_ttm_adev(pd->tbo.bdev);

 if (adev->asic_type < CHIP_VEGA10)
  return avm->pd_phys_addr >> AMDGPU_GPU_PAGE_SHIFT;
 return avm->pd_phys_addr;
}
