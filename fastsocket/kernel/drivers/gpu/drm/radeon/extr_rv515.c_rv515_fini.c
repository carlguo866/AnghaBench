
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int * bios; } ;


 int kfree (int *) ;
 int r100_cp_fini (struct radeon_device*) ;
 int radeon_agp_fini (struct radeon_device*) ;
 int radeon_atombios_fini (struct radeon_device*) ;
 int radeon_bo_fini (struct radeon_device*) ;
 int radeon_fence_driver_fini (struct radeon_device*) ;
 int radeon_gem_fini (struct radeon_device*) ;
 int radeon_ib_pool_fini (struct radeon_device*) ;
 int radeon_irq_kms_fini (struct radeon_device*) ;
 int radeon_wb_fini (struct radeon_device*) ;
 int rv370_pcie_gart_fini (struct radeon_device*) ;

void rv515_fini(struct radeon_device *rdev)
{
 r100_cp_fini(rdev);
 radeon_wb_fini(rdev);
 radeon_ib_pool_fini(rdev);
 radeon_gem_fini(rdev);
 rv370_pcie_gart_fini(rdev);
 radeon_agp_fini(rdev);
 radeon_irq_kms_fini(rdev);
 radeon_fence_driver_fini(rdev);
 radeon_bo_fini(rdev);
 radeon_atombios_fini(rdev);
 kfree(rdev->bios);
 rdev->bios = ((void*)0);
}
