
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {scalar_t__ family; } ;


 int AVIVO_D1VGA_CONTROL ;
 int AVIVO_D2VGA_CONTROL ;
 int AVIVO_DVGA_CONTROL_MODE_ENABLE ;
 int AVIVO_DVGA_CONTROL_TIMING_SELECT ;
 int AVIVO_VGA_RENDER_CONTROL ;
 int AVIVO_VGA_VSTATUS_CNTL_MASK ;
 scalar_t__ CHIP_RV730 ;
 int R600_BIOS_ROM_DIS ;
 int R600_BUS_CNTL ;
 int R600_CG_SPLL_FUNC_CNTL ;
 int R600_CG_SPLL_STATUS ;
 int R600_ROM_CNTL ;
 int R600_SCK_OVERWRITE ;
 int R600_SPLL_BYPASS_EN ;
 int R600_SPLL_CHG_STATUS ;
 int RADEON_VIPH_CONTROL ;
 int RADEON_VIPH_EN ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int radeon_read_bios (struct radeon_device*) ;

__attribute__((used)) static bool r700_read_disabled_bios(struct radeon_device *rdev)
{
 uint32_t viph_control;
 uint32_t bus_cntl;
 uint32_t d1vga_control;
 uint32_t d2vga_control;
 uint32_t vga_render_control;
 uint32_t rom_cntl;
 uint32_t cg_spll_func_cntl = 0;
 uint32_t cg_spll_status;
 bool r;

 viph_control = RREG32(RADEON_VIPH_CONTROL);
 bus_cntl = RREG32(R600_BUS_CNTL);
 d1vga_control = RREG32(AVIVO_D1VGA_CONTROL);
 d2vga_control = RREG32(AVIVO_D2VGA_CONTROL);
 vga_render_control = RREG32(AVIVO_VGA_RENDER_CONTROL);
 rom_cntl = RREG32(R600_ROM_CNTL);


 WREG32(RADEON_VIPH_CONTROL, (viph_control & ~RADEON_VIPH_EN));

 WREG32(R600_BUS_CNTL, (bus_cntl & ~R600_BIOS_ROM_DIS));

 WREG32(AVIVO_D1VGA_CONTROL,
        (d1vga_control & ~(AVIVO_DVGA_CONTROL_MODE_ENABLE |
  AVIVO_DVGA_CONTROL_TIMING_SELECT)));
 WREG32(AVIVO_D2VGA_CONTROL,
        (d2vga_control & ~(AVIVO_DVGA_CONTROL_MODE_ENABLE |
  AVIVO_DVGA_CONTROL_TIMING_SELECT)));
 WREG32(AVIVO_VGA_RENDER_CONTROL,
        (vga_render_control & ~AVIVO_VGA_VSTATUS_CNTL_MASK));

 if (rdev->family == CHIP_RV730) {
  cg_spll_func_cntl = RREG32(R600_CG_SPLL_FUNC_CNTL);


  WREG32(R600_CG_SPLL_FUNC_CNTL, (cg_spll_func_cntl |
      R600_SPLL_BYPASS_EN));


  cg_spll_status = 0;
  while (!(cg_spll_status & R600_SPLL_CHG_STATUS))
   cg_spll_status = RREG32(R600_CG_SPLL_STATUS);

  WREG32(R600_ROM_CNTL, (rom_cntl & ~R600_SCK_OVERWRITE));
 } else
  WREG32(R600_ROM_CNTL, (rom_cntl | R600_SCK_OVERWRITE));

 r = radeon_read_bios(rdev);


 if (rdev->family == CHIP_RV730) {
  WREG32(R600_CG_SPLL_FUNC_CNTL, cg_spll_func_cntl);


  cg_spll_status = 0;
  while (!(cg_spll_status & R600_SPLL_CHG_STATUS))
   cg_spll_status = RREG32(R600_CG_SPLL_STATUS);
 }
 WREG32(RADEON_VIPH_CONTROL, viph_control);
 WREG32(R600_BUS_CNTL, bus_cntl);
 WREG32(AVIVO_D1VGA_CONTROL, d1vga_control);
 WREG32(AVIVO_D2VGA_CONTROL, d2vga_control);
 WREG32(AVIVO_VGA_RENDER_CONTROL, vga_render_control);
 WREG32(R600_ROM_CNTL, rom_cntl);
 return r;
}
