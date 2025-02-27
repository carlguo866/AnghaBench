
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct TYPE_2__ {struct radeon_crtc** crtcs; } ;
struct radeon_device {int usec_timeout; TYPE_1__ mode_info; } ;
struct radeon_crtc {scalar_t__ crtc_offset; scalar_t__ crtc_id; } ;


 int AVIVO_D1GRPH_SURFACE_UPDATE_PENDING ;
 scalar_t__ AVIVO_D1GRPH_UPDATE ;
 int AVIVO_D1GRPH_UPDATE_LOCK ;
 scalar_t__ D1GRPH_PRIMARY_SURFACE_ADDRESS ;
 scalar_t__ D1GRPH_PRIMARY_SURFACE_ADDRESS_HIGH ;
 scalar_t__ D1GRPH_SECONDARY_SURFACE_ADDRESS ;
 scalar_t__ D1GRPH_SECONDARY_SURFACE_ADDRESS_HIGH ;
 scalar_t__ D2GRPH_PRIMARY_SURFACE_ADDRESS_HIGH ;
 scalar_t__ D2GRPH_SECONDARY_SURFACE_ADDRESS_HIGH ;
 int DRM_DEBUG (char*) ;
 int RREG32 (scalar_t__) ;
 int WREG32 (scalar_t__,int) ;
 int udelay (int) ;
 int upper_32_bits (scalar_t__) ;

u32 rv770_page_flip(struct radeon_device *rdev, int crtc_id, u64 crtc_base)
{
 struct radeon_crtc *radeon_crtc = rdev->mode_info.crtcs[crtc_id];
 u32 tmp = RREG32(AVIVO_D1GRPH_UPDATE + radeon_crtc->crtc_offset);
 int i;


 tmp |= AVIVO_D1GRPH_UPDATE_LOCK;
 WREG32(AVIVO_D1GRPH_UPDATE + radeon_crtc->crtc_offset, tmp);


 if (radeon_crtc->crtc_id) {
  WREG32(D2GRPH_SECONDARY_SURFACE_ADDRESS_HIGH, upper_32_bits(crtc_base));
  WREG32(D2GRPH_PRIMARY_SURFACE_ADDRESS_HIGH, upper_32_bits(crtc_base));
 } else {
  WREG32(D1GRPH_SECONDARY_SURFACE_ADDRESS_HIGH, upper_32_bits(crtc_base));
  WREG32(D1GRPH_PRIMARY_SURFACE_ADDRESS_HIGH, upper_32_bits(crtc_base));
 }
 WREG32(D1GRPH_SECONDARY_SURFACE_ADDRESS + radeon_crtc->crtc_offset,
        (u32)crtc_base);
 WREG32(D1GRPH_PRIMARY_SURFACE_ADDRESS + radeon_crtc->crtc_offset,
        (u32)crtc_base);


 for (i = 0; i < rdev->usec_timeout; i++) {
  if (RREG32(AVIVO_D1GRPH_UPDATE + radeon_crtc->crtc_offset) & AVIVO_D1GRPH_SURFACE_UPDATE_PENDING)
   break;
  udelay(1);
 }
 DRM_DEBUG("Update pending now high. Unlocking vupdate_lock.\n");


 tmp &= ~AVIVO_D1GRPH_UPDATE_LOCK;
 WREG32(AVIVO_D1GRPH_UPDATE + radeon_crtc->crtc_offset, tmp);


 return RREG32(AVIVO_D1GRPH_UPDATE + radeon_crtc->crtc_offset) & AVIVO_D1GRPH_SURFACE_UPDATE_PENDING;
}
