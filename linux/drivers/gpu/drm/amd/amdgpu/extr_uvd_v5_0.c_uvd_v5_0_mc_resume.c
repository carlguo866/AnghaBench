
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_7__ {int gb_addr_config; } ;
struct TYPE_8__ {TYPE_3__ config; } ;
struct TYPE_6__ {int max_handles; TYPE_1__* inst; } ;
struct amdgpu_device {TYPE_4__ gfx; TYPE_2__ uvd; } ;
struct TYPE_5__ {int gpu_addr; } ;


 int AMDGPU_UVD_FIRMWARE_OFFSET ;
 int AMDGPU_UVD_FIRMWARE_SIZE (struct amdgpu_device*) ;
 int AMDGPU_UVD_HEAP_SIZE ;
 int AMDGPU_UVD_SESSION_SIZE ;
 int AMDGPU_UVD_STACK_SIZE ;
 int WREG32 (int ,int) ;
 int lower_32_bits (int ) ;
 int mmUVD_LMI_VCPU_CACHE_64BIT_BAR_HIGH ;
 int mmUVD_LMI_VCPU_CACHE_64BIT_BAR_LOW ;
 int mmUVD_UDEC_ADDR_CONFIG ;
 int mmUVD_UDEC_DBW_ADDR_CONFIG ;
 int mmUVD_UDEC_DB_ADDR_CONFIG ;
 int mmUVD_VCPU_CACHE_OFFSET0 ;
 int mmUVD_VCPU_CACHE_OFFSET1 ;
 int mmUVD_VCPU_CACHE_OFFSET2 ;
 int mmUVD_VCPU_CACHE_SIZE0 ;
 int mmUVD_VCPU_CACHE_SIZE1 ;
 int mmUVD_VCPU_CACHE_SIZE2 ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void uvd_v5_0_mc_resume(struct amdgpu_device *adev)
{
 uint64_t offset;
 uint32_t size;


 WREG32(mmUVD_LMI_VCPU_CACHE_64BIT_BAR_LOW,
   lower_32_bits(adev->uvd.inst->gpu_addr));
 WREG32(mmUVD_LMI_VCPU_CACHE_64BIT_BAR_HIGH,
   upper_32_bits(adev->uvd.inst->gpu_addr));

 offset = AMDGPU_UVD_FIRMWARE_OFFSET;
 size = AMDGPU_UVD_FIRMWARE_SIZE(adev);
 WREG32(mmUVD_VCPU_CACHE_OFFSET0, offset >> 3);
 WREG32(mmUVD_VCPU_CACHE_SIZE0, size);

 offset += size;
 size = AMDGPU_UVD_HEAP_SIZE;
 WREG32(mmUVD_VCPU_CACHE_OFFSET1, offset >> 3);
 WREG32(mmUVD_VCPU_CACHE_SIZE1, size);

 offset += size;
 size = AMDGPU_UVD_STACK_SIZE +
        (AMDGPU_UVD_SESSION_SIZE * adev->uvd.max_handles);
 WREG32(mmUVD_VCPU_CACHE_OFFSET2, offset >> 3);
 WREG32(mmUVD_VCPU_CACHE_SIZE2, size);

 WREG32(mmUVD_UDEC_ADDR_CONFIG, adev->gfx.config.gb_addr_config);
 WREG32(mmUVD_UDEC_DB_ADDR_CONFIG, adev->gfx.config.gb_addr_config);
 WREG32(mmUVD_UDEC_DBW_ADDR_CONFIG, adev->gfx.config.gb_addr_config);
}
