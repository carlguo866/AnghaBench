
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int gpu_addr; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_1__ vce; } ;


 int AMDGPU_VCE_FIRMWARE_OFFSET ;
 scalar_t__ CHIP_STONEY ;
 int VCE_SYS_INT_EN ;
 int VCE_SYS_INT_TRAP_INTERRUPT_EN ;
 int VCE_V3_0_DATA_SIZE ;
 int VCE_V3_0_FW_SIZE ;
 int VCE_V3_0_STACK_SIZE ;
 int WREG32 (int ,int) ;
 int WREG32_FIELD (int ,int ,int) ;
 int WREG32_OR (int ,int) ;
 int WREG32_P (int ,int,int) ;
 int mmVCE_CLOCK_GATING_A ;
 int mmVCE_CLOCK_GATING_B ;
 int mmVCE_LMI_CACHE_CTRL ;
 int mmVCE_LMI_CTRL ;
 int mmVCE_LMI_CTRL2 ;
 int mmVCE_LMI_SWAP_CNTL ;
 int mmVCE_LMI_SWAP_CNTL1 ;
 int mmVCE_LMI_VCPU_CACHE_40BIT_BAR ;
 int mmVCE_LMI_VCPU_CACHE_40BIT_BAR0 ;
 int mmVCE_LMI_VCPU_CACHE_40BIT_BAR1 ;
 int mmVCE_LMI_VCPU_CACHE_40BIT_BAR2 ;
 int mmVCE_LMI_VM_CTRL ;
 int mmVCE_UENC_CLOCK_GATING ;
 int mmVCE_UENC_REG_CLOCK_GATING ;
 int mmVCE_VCPU_CACHE_OFFSET0 ;
 int mmVCE_VCPU_CACHE_OFFSET1 ;
 int mmVCE_VCPU_CACHE_OFFSET2 ;
 int mmVCE_VCPU_CACHE_SIZE0 ;
 int mmVCE_VCPU_CACHE_SIZE1 ;
 int mmVCE_VCPU_CACHE_SIZE2 ;
 int mmVCE_VCPU_CNTL ;

__attribute__((used)) static void vce_v3_0_mc_resume(struct amdgpu_device *adev, int idx)
{
 uint32_t offset, size;

 WREG32_P(mmVCE_CLOCK_GATING_A, 0, ~(1 << 16));
 WREG32_P(mmVCE_UENC_CLOCK_GATING, 0x1FF000, ~0xFF9FF000);
 WREG32_P(mmVCE_UENC_REG_CLOCK_GATING, 0x3F, ~0x3F);
 WREG32(mmVCE_CLOCK_GATING_B, 0x1FF);

 WREG32(mmVCE_LMI_CTRL, 0x00398000);
 WREG32_P(mmVCE_LMI_CACHE_CTRL, 0x0, ~0x1);
 WREG32(mmVCE_LMI_SWAP_CNTL, 0);
 WREG32(mmVCE_LMI_SWAP_CNTL1, 0);
 WREG32(mmVCE_LMI_VM_CTRL, 0);
 WREG32_OR(mmVCE_VCPU_CNTL, 0x00100000);

 if (adev->asic_type >= CHIP_STONEY) {
  WREG32(mmVCE_LMI_VCPU_CACHE_40BIT_BAR0, (adev->vce.gpu_addr >> 8));
  WREG32(mmVCE_LMI_VCPU_CACHE_40BIT_BAR1, (adev->vce.gpu_addr >> 8));
  WREG32(mmVCE_LMI_VCPU_CACHE_40BIT_BAR2, (adev->vce.gpu_addr >> 8));
 } else
  WREG32(mmVCE_LMI_VCPU_CACHE_40BIT_BAR, (adev->vce.gpu_addr >> 8));
 offset = AMDGPU_VCE_FIRMWARE_OFFSET;
 size = VCE_V3_0_FW_SIZE;
 WREG32(mmVCE_VCPU_CACHE_OFFSET0, offset & 0x7fffffff);
 WREG32(mmVCE_VCPU_CACHE_SIZE0, size);

 if (idx == 0) {
  offset += size;
  size = VCE_V3_0_STACK_SIZE;
  WREG32(mmVCE_VCPU_CACHE_OFFSET1, offset & 0x7fffffff);
  WREG32(mmVCE_VCPU_CACHE_SIZE1, size);
  offset += size;
  size = VCE_V3_0_DATA_SIZE;
  WREG32(mmVCE_VCPU_CACHE_OFFSET2, offset & 0x7fffffff);
  WREG32(mmVCE_VCPU_CACHE_SIZE2, size);
 } else {
  offset += size + VCE_V3_0_STACK_SIZE + VCE_V3_0_DATA_SIZE;
  size = VCE_V3_0_STACK_SIZE;
  WREG32(mmVCE_VCPU_CACHE_OFFSET1, offset & 0xfffffff);
  WREG32(mmVCE_VCPU_CACHE_SIZE1, size);
  offset += size;
  size = VCE_V3_0_DATA_SIZE;
  WREG32(mmVCE_VCPU_CACHE_OFFSET2, offset & 0xfffffff);
  WREG32(mmVCE_VCPU_CACHE_SIZE2, size);
 }

 WREG32_P(mmVCE_LMI_CTRL2, 0x0, ~0x100);
 WREG32_FIELD(VCE_SYS_INT_EN, VCE_SYS_INT_TRAP_INTERRUPT_EN, 1);
}
