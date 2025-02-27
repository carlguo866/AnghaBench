
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct rv7xx_pl {int sclk; } ;
struct rv7xx_ps {struct rv7xx_pl high; struct rv7xx_pl medium; struct rv7xx_pl low; } ;
struct radeon_ps {int dummy; } ;
struct TYPE_3__ {struct radeon_ps* current_ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;


 int CURRENT_PROFILE_INDEX_MASK ;
 int CURRENT_PROFILE_INDEX_SHIFT ;
 int RREG32 (int ) ;
 int TARGET_AND_CURRENT_PROFILE_INDEX ;
 struct rv7xx_ps* rv770_get_ps (struct radeon_ps*) ;

u32 rv770_dpm_get_current_sclk(struct radeon_device *rdev)
{
 struct radeon_ps *rps = rdev->pm.dpm.current_ps;
 struct rv7xx_ps *ps = rv770_get_ps(rps);
 struct rv7xx_pl *pl;
 u32 current_index =
  (RREG32(TARGET_AND_CURRENT_PROFILE_INDEX) & CURRENT_PROFILE_INDEX_MASK) >>
  CURRENT_PROFILE_INDEX_SHIFT;

 if (current_index > 2) {
  return 0;
 } else {
  if (current_index == 0)
   pl = &ps->low;
  else if (current_index == 1)
   pl = &ps->medium;
  else
   pl = &ps->high;
  return pl->sclk;
 }
}
