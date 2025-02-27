
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct kgd_dev {int dummy; } ;
struct TYPE_6__ {scalar_t__ ready; } ;
struct amdgpu_ring {TYPE_3__ sched; } ;
struct TYPE_4__ {struct amdgpu_ring ring; } ;
struct TYPE_5__ {TYPE_1__ kiq; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;


 int AMDGPU_GFXHUB_0 ;
 int amdgpu_amdkfd_is_kfd_vmid (struct amdgpu_device*,int) ;
 scalar_t__ amdgpu_emu_mode ;
 int amdgpu_gmc_flush_gpu_tlb (struct amdgpu_device*,int,int ,int ) ;
 int get_atc_vmid_pasid_mapping_pasid (struct kgd_dev*,int) ;
 scalar_t__ get_atc_vmid_pasid_mapping_valid (struct kgd_dev*,int) ;
 int invalidate_tlbs_with_kiq (struct amdgpu_device*,int ) ;

__attribute__((used)) static int invalidate_tlbs(struct kgd_dev *kgd, uint16_t pasid)
{
 struct amdgpu_device *adev = (struct amdgpu_device *) kgd;
 int vmid;
 struct amdgpu_ring *ring = &adev->gfx.kiq.ring;

 if (amdgpu_emu_mode == 0 && ring->sched.ready)
  return invalidate_tlbs_with_kiq(adev, pasid);

 for (vmid = 0; vmid < 16; vmid++) {
  if (!amdgpu_amdkfd_is_kfd_vmid(adev, vmid))
   continue;
  if (get_atc_vmid_pasid_mapping_valid(kgd, vmid)) {
   if (get_atc_vmid_pasid_mapping_pasid(kgd, vmid)
    == pasid) {
    amdgpu_gmc_flush_gpu_tlb(adev, vmid,
      AMDGPU_GFXHUB_0, 0);
    break;
   }
  }
 }

 return 0;
}
