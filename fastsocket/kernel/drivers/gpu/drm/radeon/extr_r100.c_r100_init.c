
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int flags; int accel_working; int dev; int ddev; scalar_t__ is_atom_bios; } ;


 scalar_t__ ASIC_IS_AVIVO (struct radeon_device*) ;
 int EINVAL ;
 int RADEON_IS_AGP ;
 int RADEON_IS_PCI ;
 int RREG32 (int ) ;
 int R_0007C0_CP_STAT ;
 int R_000E40_RBBM_STATUS ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*,int ,int ) ;
 int r100_cp_fini (struct radeon_device*) ;
 int r100_debugfs (struct radeon_device*) ;
 int r100_errata (struct radeon_device*) ;
 int r100_mc_init (struct radeon_device*) ;
 int r100_pci_gart_fini (struct radeon_device*) ;
 int r100_pci_gart_init (struct radeon_device*) ;
 int r100_restore_sanity (struct radeon_device*) ;
 int r100_set_safe_registers (struct radeon_device*) ;
 int r100_startup (struct radeon_device*) ;
 int r100_vga_render_disable (struct radeon_device*) ;
 int radeon_agp_disable (struct radeon_device*) ;
 int radeon_agp_init (struct radeon_device*) ;
 scalar_t__ radeon_asic_reset (struct radeon_device*) ;
 int radeon_bo_init (struct radeon_device*) ;
 int radeon_boot_test_post_card (struct radeon_device*) ;
 int radeon_combios_init (struct radeon_device*) ;
 int radeon_fence_driver_init (struct radeon_device*) ;
 int radeon_get_bios (struct radeon_device*) ;
 int radeon_get_clock_info (int ) ;
 int radeon_ib_pool_fini (struct radeon_device*) ;
 int radeon_irq_kms_fini (struct radeon_device*) ;
 int radeon_scratch_init (struct radeon_device*) ;
 int radeon_surface_init (struct radeon_device*) ;
 int radeon_wb_fini (struct radeon_device*) ;

int r100_init(struct radeon_device *rdev)
{
 int r;


 r100_debugfs(rdev);

 r100_vga_render_disable(rdev);

 radeon_scratch_init(rdev);

 radeon_surface_init(rdev);

 r100_restore_sanity(rdev);


 if (!radeon_get_bios(rdev)) {
  if (ASIC_IS_AVIVO(rdev))
   return -EINVAL;
 }
 if (rdev->is_atom_bios) {
  dev_err(rdev->dev, "Expecting combios for RS400/RS480 GPU\n");
  return -EINVAL;
 } else {
  r = radeon_combios_init(rdev);
  if (r)
   return r;
 }

 if (radeon_asic_reset(rdev)) {
  dev_warn(rdev->dev,
   "GPU reset failed ! (0xE40=0x%08X, 0x7C0=0x%08X)\n",
   RREG32(R_000E40_RBBM_STATUS),
   RREG32(R_0007C0_CP_STAT));
 }

 if (radeon_boot_test_post_card(rdev) == 0)
  return -EINVAL;

 r100_errata(rdev);

 radeon_get_clock_info(rdev->ddev);

 if (rdev->flags & RADEON_IS_AGP) {
  r = radeon_agp_init(rdev);
  if (r) {
   radeon_agp_disable(rdev);
  }
 }

 r100_mc_init(rdev);

 r = radeon_fence_driver_init(rdev);
 if (r)
  return r;

 r = radeon_bo_init(rdev);
 if (r)
  return r;
 if (rdev->flags & RADEON_IS_PCI) {
  r = r100_pci_gart_init(rdev);
  if (r)
   return r;
 }
 r100_set_safe_registers(rdev);

 rdev->accel_working = 1;
 r = r100_startup(rdev);
 if (r) {

  dev_err(rdev->dev, "Disabling GPU acceleration\n");
  r100_cp_fini(rdev);
  radeon_wb_fini(rdev);
  radeon_ib_pool_fini(rdev);
  radeon_irq_kms_fini(rdev);
  if (rdev->flags & RADEON_IS_PCI)
   r100_pci_gart_fini(rdev);
  rdev->accel_working = 0;
 }
 return 0;
}
