
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct psp_context {int fw_pri_mc_addr; int sys_bin_size; int sys_start_addr; int fw_pri_buf; void* sos_fw_version; struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int MP0 ;
 int PSP_1_MEG ;
 void* RREG32_SOC15 (int ,int ,int ) ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int mdelay (int) ;
 int memcpy (int ,int ,int ) ;
 int memset (int ,int ,int ) ;
 int mmMP0_SMN_C2PMSG_35 ;
 int mmMP0_SMN_C2PMSG_36 ;
 int mmMP0_SMN_C2PMSG_58 ;
 int mmMP0_SMN_C2PMSG_81 ;
 int printk (char*,void*) ;
 int psp_wait_for (struct psp_context*,int ,int,int,int) ;

__attribute__((used)) static int psp_v12_0_bootloader_load_sysdrv(struct psp_context *psp)
{
 int ret;
 uint32_t psp_gfxdrv_command_reg = 0;
 struct amdgpu_device *adev = psp->adev;
 uint32_t sol_reg;




 sol_reg = RREG32_SOC15(MP0, 0, mmMP0_SMN_C2PMSG_81);
 if (sol_reg) {
  psp->sos_fw_version = RREG32_SOC15(MP0, 0, mmMP0_SMN_C2PMSG_58);
  printk("sos fw version = 0x%x.\n", psp->sos_fw_version);
  return 0;
 }


 ret = psp_wait_for(psp, SOC15_REG_OFFSET(MP0, 0, mmMP0_SMN_C2PMSG_35),
      0x80000000, 0x80000000, 0);
 if (ret)
  return ret;

 memset(psp->fw_pri_buf, 0, PSP_1_MEG);


 memcpy(psp->fw_pri_buf, psp->sys_start_addr, psp->sys_bin_size);


 WREG32_SOC15(MP0, 0, mmMP0_SMN_C2PMSG_36,
        (uint32_t)(psp->fw_pri_mc_addr >> 20));
 psp_gfxdrv_command_reg = 1 << 16;
 WREG32_SOC15(MP0, 0, mmMP0_SMN_C2PMSG_35,
        psp_gfxdrv_command_reg);


 mdelay(20);

 ret = psp_wait_for(psp, SOC15_REG_OFFSET(MP0, 0, mmMP0_SMN_C2PMSG_35),
      0x80000000, 0x80000000, 0);

 return ret;
}
