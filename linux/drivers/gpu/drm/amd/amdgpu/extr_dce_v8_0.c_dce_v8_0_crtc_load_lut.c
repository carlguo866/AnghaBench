
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct drm_crtc {int gamma_size; int * gamma_store; struct drm_device* dev; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_crtc {scalar_t__ crtc_offset; int crtc_id; } ;


 int ALPHA_CONTROL__CURSOR_ALPHA_BLND_ENA_MASK ;
 int DEGAMMA_BYPASS ;
 int DEGAMMA_CONTROL__CURSOR_DEGAMMA_MODE__SHIFT ;
 int DEGAMMA_CONTROL__GRPH_DEGAMMA_MODE__SHIFT ;
 int DEGAMMA_CONTROL__OVL_DEGAMMA_MODE__SHIFT ;
 int DRM_DEBUG_KMS (char*,int ) ;
 int GAMUT_REMAP_BYPASS ;
 int GAMUT_REMAP_CONTROL__GRPH_GAMUT_REMAP_MODE__SHIFT ;
 int GAMUT_REMAP_CONTROL__OVL_GAMUT_REMAP_MODE__SHIFT ;
 int INPUT_CSC_BYPASS ;
 int INPUT_CSC_CONTROL__INPUT_CSC_GRPH_MODE__SHIFT ;
 int INPUT_CSC_CONTROL__INPUT_CSC_OVL_MODE__SHIFT ;
 int INPUT_GAMMA_CONTROL__GRPH_INPUT_GAMMA_MODE__SHIFT ;
 int INPUT_GAMMA_CONTROL__OVL_INPUT_GAMMA_MODE__SHIFT ;
 int INPUT_GAMMA_USE_LUT ;
 int OUTPUT_CSC_BYPASS ;
 int OUTPUT_CSC_CONTROL__OUTPUT_CSC_GRPH_MODE__SHIFT ;
 int OUTPUT_CSC_CONTROL__OUTPUT_CSC_OVL_MODE__SHIFT ;
 int PRESCALE_GRPH_CONTROL__GRPH_PRESCALE_BYPASS_MASK ;
 int PRESCALE_OVL_CONTROL__OVL_PRESCALE_BYPASS_MASK ;
 int REGAMMA_BYPASS ;
 int REGAMMA_CONTROL__GRPH_REGAMMA_MODE__SHIFT ;
 int REGAMMA_CONTROL__OVL_REGAMMA_MODE__SHIFT ;
 int WREG32 (scalar_t__,int) ;
 scalar_t__ mmALPHA_CONTROL ;
 scalar_t__ mmDC_LUT_30_COLOR ;
 scalar_t__ mmDC_LUT_BLACK_OFFSET_BLUE ;
 scalar_t__ mmDC_LUT_BLACK_OFFSET_GREEN ;
 scalar_t__ mmDC_LUT_BLACK_OFFSET_RED ;
 scalar_t__ mmDC_LUT_CONTROL ;
 scalar_t__ mmDC_LUT_RW_INDEX ;
 scalar_t__ mmDC_LUT_RW_MODE ;
 scalar_t__ mmDC_LUT_WHITE_OFFSET_BLUE ;
 scalar_t__ mmDC_LUT_WHITE_OFFSET_GREEN ;
 scalar_t__ mmDC_LUT_WHITE_OFFSET_RED ;
 scalar_t__ mmDC_LUT_WRITE_EN_MASK ;
 scalar_t__ mmDEGAMMA_CONTROL ;
 scalar_t__ mmGAMUT_REMAP_CONTROL ;
 scalar_t__ mmINPUT_CSC_CONTROL ;
 scalar_t__ mmINPUT_GAMMA_CONTROL ;
 scalar_t__ mmOUTPUT_CSC_CONTROL ;
 scalar_t__ mmPRESCALE_GRPH_CONTROL ;
 scalar_t__ mmPRESCALE_OVL_CONTROL ;
 scalar_t__ mmREGAMMA_CONTROL ;
 struct amdgpu_crtc* to_amdgpu_crtc (struct drm_crtc*) ;

__attribute__((used)) static void dce_v8_0_crtc_load_lut(struct drm_crtc *crtc)
{
 struct amdgpu_crtc *amdgpu_crtc = to_amdgpu_crtc(crtc);
 struct drm_device *dev = crtc->dev;
 struct amdgpu_device *adev = dev->dev_private;
 u16 *r, *g, *b;
 int i;

 DRM_DEBUG_KMS("%d\n", amdgpu_crtc->crtc_id);

 WREG32(mmINPUT_CSC_CONTROL + amdgpu_crtc->crtc_offset,
        ((INPUT_CSC_BYPASS << INPUT_CSC_CONTROL__INPUT_CSC_GRPH_MODE__SHIFT) |
  (INPUT_CSC_BYPASS << INPUT_CSC_CONTROL__INPUT_CSC_OVL_MODE__SHIFT)));
 WREG32(mmPRESCALE_GRPH_CONTROL + amdgpu_crtc->crtc_offset,
        PRESCALE_GRPH_CONTROL__GRPH_PRESCALE_BYPASS_MASK);
 WREG32(mmPRESCALE_OVL_CONTROL + amdgpu_crtc->crtc_offset,
        PRESCALE_OVL_CONTROL__OVL_PRESCALE_BYPASS_MASK);
 WREG32(mmINPUT_GAMMA_CONTROL + amdgpu_crtc->crtc_offset,
        ((INPUT_GAMMA_USE_LUT << INPUT_GAMMA_CONTROL__GRPH_INPUT_GAMMA_MODE__SHIFT) |
  (INPUT_GAMMA_USE_LUT << INPUT_GAMMA_CONTROL__OVL_INPUT_GAMMA_MODE__SHIFT)));

 WREG32(mmDC_LUT_CONTROL + amdgpu_crtc->crtc_offset, 0);

 WREG32(mmDC_LUT_BLACK_OFFSET_BLUE + amdgpu_crtc->crtc_offset, 0);
 WREG32(mmDC_LUT_BLACK_OFFSET_GREEN + amdgpu_crtc->crtc_offset, 0);
 WREG32(mmDC_LUT_BLACK_OFFSET_RED + amdgpu_crtc->crtc_offset, 0);

 WREG32(mmDC_LUT_WHITE_OFFSET_BLUE + amdgpu_crtc->crtc_offset, 0xffff);
 WREG32(mmDC_LUT_WHITE_OFFSET_GREEN + amdgpu_crtc->crtc_offset, 0xffff);
 WREG32(mmDC_LUT_WHITE_OFFSET_RED + amdgpu_crtc->crtc_offset, 0xffff);

 WREG32(mmDC_LUT_RW_MODE + amdgpu_crtc->crtc_offset, 0);
 WREG32(mmDC_LUT_WRITE_EN_MASK + amdgpu_crtc->crtc_offset, 0x00000007);

 WREG32(mmDC_LUT_RW_INDEX + amdgpu_crtc->crtc_offset, 0);
 r = crtc->gamma_store;
 g = r + crtc->gamma_size;
 b = g + crtc->gamma_size;
 for (i = 0; i < 256; i++) {
  WREG32(mmDC_LUT_30_COLOR + amdgpu_crtc->crtc_offset,
         ((*r++ & 0xffc0) << 14) |
         ((*g++ & 0xffc0) << 4) |
         (*b++ >> 6));
 }

 WREG32(mmDEGAMMA_CONTROL + amdgpu_crtc->crtc_offset,
        ((DEGAMMA_BYPASS << DEGAMMA_CONTROL__GRPH_DEGAMMA_MODE__SHIFT) |
  (DEGAMMA_BYPASS << DEGAMMA_CONTROL__OVL_DEGAMMA_MODE__SHIFT) |
  (DEGAMMA_BYPASS << DEGAMMA_CONTROL__CURSOR_DEGAMMA_MODE__SHIFT)));
 WREG32(mmGAMUT_REMAP_CONTROL + amdgpu_crtc->crtc_offset,
        ((GAMUT_REMAP_BYPASS << GAMUT_REMAP_CONTROL__GRPH_GAMUT_REMAP_MODE__SHIFT) |
  (GAMUT_REMAP_BYPASS << GAMUT_REMAP_CONTROL__OVL_GAMUT_REMAP_MODE__SHIFT)));
 WREG32(mmREGAMMA_CONTROL + amdgpu_crtc->crtc_offset,
        ((REGAMMA_BYPASS << REGAMMA_CONTROL__GRPH_REGAMMA_MODE__SHIFT) |
  (REGAMMA_BYPASS << REGAMMA_CONTROL__OVL_REGAMMA_MODE__SHIFT)));
 WREG32(mmOUTPUT_CSC_CONTROL + amdgpu_crtc->crtc_offset,
        ((OUTPUT_CSC_BYPASS << OUTPUT_CSC_CONTROL__OUTPUT_CSC_GRPH_MODE__SHIFT) |
  (OUTPUT_CSC_BYPASS << OUTPUT_CSC_CONTROL__OUTPUT_CSC_OVL_MODE__SHIFT)));

 WREG32(0x1a50 + amdgpu_crtc->crtc_offset, 0);



 WREG32(mmALPHA_CONTROL + amdgpu_crtc->crtc_offset,
        ALPHA_CONTROL__CURSOR_ALPHA_BLND_ENA_MASK);
}
