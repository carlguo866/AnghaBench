
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct psp_context {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int DRM_INFO (char*) ;
 int EINVAL ;
 int GFX_CTRL_CMD_ID_MODE1_RST ;
 int MP0 ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int WREG32 (int ,int ) ;
 int mmMP0_SMN_C2PMSG_33 ;
 int mmMP0_SMN_C2PMSG_64 ;
 int msleep (int) ;
 int psp_wait_for (struct psp_context*,int ,int,int,int) ;

__attribute__((used)) static int psp_v3_1_mode1_reset(struct psp_context *psp)
{
 int ret;
 uint32_t offset;
 struct amdgpu_device *adev = psp->adev;

 offset = SOC15_REG_OFFSET(MP0, 0, mmMP0_SMN_C2PMSG_64);

 ret = psp_wait_for(psp, offset, 0x80000000, 0x8000FFFF, 0);

 if (ret) {
  DRM_INFO("psp is not working correctly before mode1 reset!\n");
  return -EINVAL;
 }


 WREG32(offset, GFX_CTRL_CMD_ID_MODE1_RST);

 msleep(500);

 offset = SOC15_REG_OFFSET(MP0, 0, mmMP0_SMN_C2PMSG_33);

 ret = psp_wait_for(psp, offset, 0x80000000, 0x80000000, 0);

 if (ret) {
  DRM_INFO("psp mode 1 reset failed!\n");
  return -EINVAL;
 }

 DRM_INFO("psp mode1 reset succeed \n");

 return 0;
}
