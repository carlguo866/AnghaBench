
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int ucode_array_offset_bytes; int ucode_size_bytes; int ucode_version; } ;
struct mc_firmware_header_v1_0 {TYPE_3__ header; int io_debug_array_offset_bytes; int io_debug_size_bytes; } ;
struct TYPE_5__ {int fw_version; TYPE_1__* fw; } ;
struct amdgpu_device {int usec_timeout; TYPE_2__ gmc; } ;
typedef int __le32 ;
struct TYPE_4__ {scalar_t__ data; } ;


 int EINVAL ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 scalar_t__ amdgpu_sriov_bios (struct amdgpu_device*) ;
 int amdgpu_ucode_print_mc_hdr (TYPE_3__*) ;
 int le32_to_cpu (int ) ;
 int le32_to_cpup (int ) ;
 int mmMC_SEQ_IO_DEBUG_DATA ;
 int mmMC_SEQ_IO_DEBUG_INDEX ;
 int mmMC_SEQ_MISC0 ;
 int mmMC_SEQ_SUP_CNTL ;
 int mmMC_SEQ_SUP_PGM ;
 int udelay (int) ;

__attribute__((used)) static int gmc_v8_0_polaris_mc_load_microcode(struct amdgpu_device *adev)
{
 const struct mc_firmware_header_v1_0 *hdr;
 const __le32 *fw_data = ((void*)0);
 const __le32 *io_mc_regs = ((void*)0);
 u32 data;
 int i, ucode_size, regs_size;






 if (amdgpu_sriov_bios(adev))
  return 0;

 if (!adev->gmc.fw)
  return -EINVAL;

 hdr = (const struct mc_firmware_header_v1_0 *)adev->gmc.fw->data;
 amdgpu_ucode_print_mc_hdr(&hdr->header);

 adev->gmc.fw_version = le32_to_cpu(hdr->header.ucode_version);
 regs_size = le32_to_cpu(hdr->io_debug_size_bytes) / (4 * 2);
 io_mc_regs = (const __le32 *)
  (adev->gmc.fw->data + le32_to_cpu(hdr->io_debug_array_offset_bytes));
 ucode_size = le32_to_cpu(hdr->header.ucode_size_bytes) / 4;
 fw_data = (const __le32 *)
  (adev->gmc.fw->data + le32_to_cpu(hdr->header.ucode_array_offset_bytes));

 data = RREG32(mmMC_SEQ_MISC0);
 data &= ~(0x40);
 WREG32(mmMC_SEQ_MISC0, data);


 for (i = 0; i < regs_size; i++) {
  WREG32(mmMC_SEQ_IO_DEBUG_INDEX, le32_to_cpup(io_mc_regs++));
  WREG32(mmMC_SEQ_IO_DEBUG_DATA, le32_to_cpup(io_mc_regs++));
 }

 WREG32(mmMC_SEQ_SUP_CNTL, 0x00000008);
 WREG32(mmMC_SEQ_SUP_CNTL, 0x00000010);


 for (i = 0; i < ucode_size; i++)
  WREG32(mmMC_SEQ_SUP_PGM, le32_to_cpup(fw_data++));


 WREG32(mmMC_SEQ_SUP_CNTL, 0x00000008);
 WREG32(mmMC_SEQ_SUP_CNTL, 0x00000004);
 WREG32(mmMC_SEQ_SUP_CNTL, 0x00000001);


 for (i = 0; i < adev->usec_timeout; i++) {
  data = RREG32(mmMC_SEQ_MISC0);
  if (data & 0x80)
   break;
  udelay(1);
 }

 return 0;
}
