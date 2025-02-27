
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct trinity_ps {int dummy; } ;
struct radeon_ps {int class; void* dclk; void* vclk; void* class2; void* caps; } ;
struct TYPE_3__ {struct radeon_ps* uvd_ps; struct radeon_ps* boot_ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;
struct _ATOM_PPLIB_NONCLOCK_INFO {int ulDCLK; int ulVCLK; int usClassification2; int usClassification; int ulCapsAndSettings; } ;


 int ATOM_PPLIB_CLASSIFICATION_BOOT ;
 int ATOM_PPLIB_CLASSIFICATION_UVDSTATE ;
 scalar_t__ ATOM_PPLIB_NONCLOCKINFO_VER1 ;
 void* le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 struct trinity_ps* trinity_get_ps (struct radeon_ps*) ;
 int trinity_patch_boot_state (struct radeon_device*,struct trinity_ps*) ;

__attribute__((used)) static void trinity_parse_pplib_non_clock_info(struct radeon_device *rdev,
            struct radeon_ps *rps,
            struct _ATOM_PPLIB_NONCLOCK_INFO *non_clock_info,
            u8 table_rev)
{
 struct trinity_ps *ps = trinity_get_ps(rps);

 rps->caps = le32_to_cpu(non_clock_info->ulCapsAndSettings);
 rps->class = le16_to_cpu(non_clock_info->usClassification);
 rps->class2 = le16_to_cpu(non_clock_info->usClassification2);

 if (ATOM_PPLIB_NONCLOCKINFO_VER1 < table_rev) {
  rps->vclk = le32_to_cpu(non_clock_info->ulVCLK);
  rps->dclk = le32_to_cpu(non_clock_info->ulDCLK);
 } else {
  rps->vclk = 0;
  rps->dclk = 0;
 }

 if (rps->class & ATOM_PPLIB_CLASSIFICATION_BOOT) {
  rdev->pm.dpm.boot_ps = rps;
  trinity_patch_boot_state(rdev, ps);
 }
 if (rps->class & ATOM_PPLIB_CLASSIFICATION_UVDSTATE)
  rdev->pm.dpm.uvd_ps = rps;
}
