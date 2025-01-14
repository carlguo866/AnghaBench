
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct radeon_device {size_t num_crtc; } ;


 scalar_t__ EVERGREEN_CRTC_CONTROL ;
 int EVERGREEN_CRTC_MASTER_EN ;
 scalar_t__ EVERGREEN_CRTC_STATUS_HV_COUNT ;
 int RREG32 (scalar_t__) ;
 scalar_t__* crtc_offsets ;
 int udelay (int) ;

bool evergreen_is_display_hung(struct radeon_device *rdev)
{
 u32 crtc_hung = 0;
 u32 crtc_status[6];
 u32 i, j, tmp;

 for (i = 0; i < rdev->num_crtc; i++) {
  if (RREG32(EVERGREEN_CRTC_CONTROL + crtc_offsets[i]) & EVERGREEN_CRTC_MASTER_EN) {
   crtc_status[i] = RREG32(EVERGREEN_CRTC_STATUS_HV_COUNT + crtc_offsets[i]);
   crtc_hung |= (1 << i);
  }
 }

 for (j = 0; j < 10; j++) {
  for (i = 0; i < rdev->num_crtc; i++) {
   if (crtc_hung & (1 << i)) {
    tmp = RREG32(EVERGREEN_CRTC_STATUS_HV_COUNT + crtc_offsets[i]);
    if (tmp != crtc_status[i])
     crtc_hung &= ~(1 << i);
   }
  }
  if (crtc_hung == 0)
   return 0;
  udelay(100);
 }

 return 1;
}
