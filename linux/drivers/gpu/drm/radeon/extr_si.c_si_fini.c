
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int * bios; scalar_t__ has_vce; scalar_t__ has_uvd; } ;


 int cayman_dma_fini (struct radeon_device*) ;
 int kfree (int *) ;
 int r600_vram_scratch_fini (struct radeon_device*) ;
 int radeon_atombios_fini (struct radeon_device*) ;
 int radeon_bo_fini (struct radeon_device*) ;
 int radeon_fence_driver_fini (struct radeon_device*) ;
 int radeon_gem_fini (struct radeon_device*) ;
 int radeon_ib_pool_fini (struct radeon_device*) ;
 int radeon_irq_kms_fini (struct radeon_device*) ;
 int radeon_pm_fini (struct radeon_device*) ;
 int radeon_uvd_fini (struct radeon_device*) ;
 int radeon_vce_fini (struct radeon_device*) ;
 int radeon_vm_manager_fini (struct radeon_device*) ;
 int radeon_wb_fini (struct radeon_device*) ;
 int si_cp_fini (struct radeon_device*) ;
 int si_fini_cg (struct radeon_device*) ;
 int si_fini_pg (struct radeon_device*) ;
 int si_irq_fini (struct radeon_device*) ;
 int si_pcie_gart_fini (struct radeon_device*) ;
 int sumo_rlc_fini (struct radeon_device*) ;
 int uvd_v1_0_fini (struct radeon_device*) ;

void si_fini(struct radeon_device *rdev)
{
 radeon_pm_fini(rdev);
 si_cp_fini(rdev);
 cayman_dma_fini(rdev);
 si_fini_pg(rdev);
 si_fini_cg(rdev);
 si_irq_fini(rdev);
 sumo_rlc_fini(rdev);
 radeon_wb_fini(rdev);
 radeon_vm_manager_fini(rdev);
 radeon_ib_pool_fini(rdev);
 radeon_irq_kms_fini(rdev);
 if (rdev->has_uvd) {
  uvd_v1_0_fini(rdev);
  radeon_uvd_fini(rdev);
 }
 if (rdev->has_vce)
  radeon_vce_fini(rdev);
 si_pcie_gart_fini(rdev);
 r600_vram_scratch_fini(rdev);
 radeon_gem_fini(rdev);
 radeon_fence_driver_fini(rdev);
 radeon_bo_fini(rdev);
 radeon_atombios_fini(rdev);
 kfree(rdev->bios);
 rdev->bios = ((void*)0);
}
