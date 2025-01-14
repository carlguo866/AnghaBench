
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int priv_inst_irq; int priv_reg_irq; } ;
struct amdgpu_device {TYPE_1__ gfx; } ;


 int DRM_ERROR (char*) ;
 scalar_t__ amdgpu_async_gfx_ring ;
 scalar_t__ amdgpu_gfx_disable_kcq (struct amdgpu_device*) ;
 int amdgpu_irq_put (struct amdgpu_device*,int *,int ) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int gfx_v10_0_cp_enable (struct amdgpu_device*,int) ;
 int gfx_v10_0_csb_vram_unpin (struct amdgpu_device*) ;
 int gfx_v10_0_enable_gui_idle_interrupt (struct amdgpu_device*,int) ;
 int gfx_v10_0_kiq_disable_kgq (struct amdgpu_device*) ;
 int pr_debug (char*) ;

__attribute__((used)) static int gfx_v10_0_hw_fini(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 int r;

 amdgpu_irq_put(adev, &adev->gfx.priv_reg_irq, 0);
 amdgpu_irq_put(adev, &adev->gfx.priv_inst_irq, 0);

 if (amdgpu_async_gfx_ring) {
  r = gfx_v10_0_kiq_disable_kgq(adev);
  if (r)
   DRM_ERROR("KGQ disable failed\n");
 }

 if (amdgpu_gfx_disable_kcq(adev))
  DRM_ERROR("KCQ disable failed\n");
 if (amdgpu_sriov_vf(adev)) {
  pr_debug("For SRIOV client, shouldn't do anything.\n");
  return 0;
 }
 gfx_v10_0_cp_enable(adev, 0);
 gfx_v10_0_enable_gui_idle_interrupt(adev, 0);
 gfx_v10_0_csb_vram_unpin(adev);

 return 0;
}
