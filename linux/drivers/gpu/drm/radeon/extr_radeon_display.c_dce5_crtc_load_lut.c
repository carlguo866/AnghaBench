
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct radeon_device {int dummy; } ;
struct radeon_crtc {scalar_t__ crtc_offset; int output_csc; int crtc_id; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_crtc {int gamma_size; int * gamma_store; struct drm_device* dev; } ;


 scalar_t__ ASIC_IS_DCE8 (struct radeon_device*) ;
 scalar_t__ CIK_ALPHA_CONTROL ;
 int CIK_CURSOR_ALPHA_BLND_ENA ;
 int DRM_DEBUG_KMS (char*,int ) ;
 scalar_t__ EVERGREEN_DC_LUT_30_COLOR ;
 scalar_t__ EVERGREEN_DC_LUT_BLACK_OFFSET_BLUE ;
 scalar_t__ EVERGREEN_DC_LUT_BLACK_OFFSET_GREEN ;
 scalar_t__ EVERGREEN_DC_LUT_BLACK_OFFSET_RED ;
 scalar_t__ EVERGREEN_DC_LUT_CONTROL ;
 scalar_t__ EVERGREEN_DC_LUT_RW_INDEX ;
 scalar_t__ EVERGREEN_DC_LUT_RW_MODE ;
 scalar_t__ EVERGREEN_DC_LUT_WHITE_OFFSET_BLUE ;
 scalar_t__ EVERGREEN_DC_LUT_WHITE_OFFSET_GREEN ;
 scalar_t__ EVERGREEN_DC_LUT_WHITE_OFFSET_RED ;
 scalar_t__ EVERGREEN_DC_LUT_WRITE_EN_MASK ;
 int NI_CURSOR_DEGAMMA_MODE (int ) ;
 int NI_DEGAMMA_BYPASS ;
 scalar_t__ NI_DEGAMMA_CONTROL ;
 int NI_GAMUT_REMAP_BYPASS ;
 scalar_t__ NI_GAMUT_REMAP_CONTROL ;
 int NI_GRPH_DEGAMMA_MODE (int ) ;
 int NI_GRPH_GAMUT_REMAP_MODE (int ) ;
 int NI_GRPH_INPUT_GAMMA_MODE (int ) ;
 int NI_GRPH_PRESCALE_BYPASS ;
 int NI_GRPH_REGAMMA_MODE (int ) ;
 int NI_ICON_DEGAMMA_MODE (int ) ;
 int NI_INPUT_CSC_BYPASS ;
 scalar_t__ NI_INPUT_CSC_CONTROL ;
 int NI_INPUT_CSC_GRPH_MODE (int ) ;
 int NI_INPUT_CSC_OVL_MODE (int ) ;
 scalar_t__ NI_INPUT_GAMMA_CONTROL ;
 int NI_INPUT_GAMMA_USE_LUT ;
 int NI_OUTPUT_CSC_BYPASS ;
 scalar_t__ NI_OUTPUT_CSC_CONTROL ;
 int NI_OUTPUT_CSC_GRPH_MODE (int ) ;
 int NI_OUTPUT_CSC_OVL_MODE (int ) ;
 int NI_OVL_DEGAMMA_MODE (int ) ;
 int NI_OVL_GAMUT_REMAP_MODE (int ) ;
 int NI_OVL_INPUT_GAMMA_MODE (int ) ;
 int NI_OVL_PRESCALE_BYPASS ;
 int NI_OVL_REGAMMA_MODE (int ) ;
 scalar_t__ NI_PRESCALE_GRPH_CONTROL ;
 scalar_t__ NI_PRESCALE_OVL_CONTROL ;
 int NI_REGAMMA_BYPASS ;
 scalar_t__ NI_REGAMMA_CONTROL ;
 int WREG32 (scalar_t__,int) ;
 struct radeon_crtc* to_radeon_crtc (struct drm_crtc*) ;

__attribute__((used)) static void dce5_crtc_load_lut(struct drm_crtc *crtc)
{
 struct radeon_crtc *radeon_crtc = to_radeon_crtc(crtc);
 struct drm_device *dev = crtc->dev;
 struct radeon_device *rdev = dev->dev_private;
 u16 *r, *g, *b;
 int i;

 DRM_DEBUG_KMS("%d\n", radeon_crtc->crtc_id);

 WREG32(NI_INPUT_CSC_CONTROL + radeon_crtc->crtc_offset,
        (NI_INPUT_CSC_GRPH_MODE(NI_INPUT_CSC_BYPASS) |
  NI_INPUT_CSC_OVL_MODE(NI_INPUT_CSC_BYPASS)));
 WREG32(NI_PRESCALE_GRPH_CONTROL + radeon_crtc->crtc_offset,
        NI_GRPH_PRESCALE_BYPASS);
 WREG32(NI_PRESCALE_OVL_CONTROL + radeon_crtc->crtc_offset,
        NI_OVL_PRESCALE_BYPASS);
 WREG32(NI_INPUT_GAMMA_CONTROL + radeon_crtc->crtc_offset,
        (NI_GRPH_INPUT_GAMMA_MODE(NI_INPUT_GAMMA_USE_LUT) |
  NI_OVL_INPUT_GAMMA_MODE(NI_INPUT_GAMMA_USE_LUT)));

 WREG32(EVERGREEN_DC_LUT_CONTROL + radeon_crtc->crtc_offset, 0);

 WREG32(EVERGREEN_DC_LUT_BLACK_OFFSET_BLUE + radeon_crtc->crtc_offset, 0);
 WREG32(EVERGREEN_DC_LUT_BLACK_OFFSET_GREEN + radeon_crtc->crtc_offset, 0);
 WREG32(EVERGREEN_DC_LUT_BLACK_OFFSET_RED + radeon_crtc->crtc_offset, 0);

 WREG32(EVERGREEN_DC_LUT_WHITE_OFFSET_BLUE + radeon_crtc->crtc_offset, 0xffff);
 WREG32(EVERGREEN_DC_LUT_WHITE_OFFSET_GREEN + radeon_crtc->crtc_offset, 0xffff);
 WREG32(EVERGREEN_DC_LUT_WHITE_OFFSET_RED + radeon_crtc->crtc_offset, 0xffff);

 WREG32(EVERGREEN_DC_LUT_RW_MODE + radeon_crtc->crtc_offset, 0);
 WREG32(EVERGREEN_DC_LUT_WRITE_EN_MASK + radeon_crtc->crtc_offset, 0x00000007);

 WREG32(EVERGREEN_DC_LUT_RW_INDEX + radeon_crtc->crtc_offset, 0);
 r = crtc->gamma_store;
 g = r + crtc->gamma_size;
 b = g + crtc->gamma_size;
 for (i = 0; i < 256; i++) {
  WREG32(EVERGREEN_DC_LUT_30_COLOR + radeon_crtc->crtc_offset,
         ((*r++ & 0xffc0) << 14) |
         ((*g++ & 0xffc0) << 4) |
         (*b++ >> 6));
 }

 WREG32(NI_DEGAMMA_CONTROL + radeon_crtc->crtc_offset,
        (NI_GRPH_DEGAMMA_MODE(NI_DEGAMMA_BYPASS) |
  NI_OVL_DEGAMMA_MODE(NI_DEGAMMA_BYPASS) |
  NI_ICON_DEGAMMA_MODE(NI_DEGAMMA_BYPASS) |
  NI_CURSOR_DEGAMMA_MODE(NI_DEGAMMA_BYPASS)));
 WREG32(NI_GAMUT_REMAP_CONTROL + radeon_crtc->crtc_offset,
        (NI_GRPH_GAMUT_REMAP_MODE(NI_GAMUT_REMAP_BYPASS) |
  NI_OVL_GAMUT_REMAP_MODE(NI_GAMUT_REMAP_BYPASS)));
 WREG32(NI_REGAMMA_CONTROL + radeon_crtc->crtc_offset,
        (NI_GRPH_REGAMMA_MODE(NI_REGAMMA_BYPASS) |
  NI_OVL_REGAMMA_MODE(NI_REGAMMA_BYPASS)));
 WREG32(NI_OUTPUT_CSC_CONTROL + radeon_crtc->crtc_offset,
        (NI_OUTPUT_CSC_GRPH_MODE(radeon_crtc->output_csc) |
  NI_OUTPUT_CSC_OVL_MODE(NI_OUTPUT_CSC_BYPASS)));

 WREG32(0x6940 + radeon_crtc->crtc_offset, 0);
 if (ASIC_IS_DCE8(rdev)) {



  WREG32(CIK_ALPHA_CONTROL + radeon_crtc->crtc_offset,
         CIK_CURSOR_ALPHA_BLND_ENA);
 }
}
