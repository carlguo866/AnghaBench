
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lvds_setting_information {int dummy; } ;
struct lvds_chip_information {scalar_t__ lvds_chip_name; } ;
struct TYPE_4__ {TYPE_1__* chip_info; } ;
struct TYPE_3__ {int gfx_chip_name; } ;




 scalar_t__ VT1636_LVDS ;
 int viafb_vt1636_patch_skew_on_vt3327 (struct lvds_setting_information*,struct lvds_chip_information*) ;
 int viafb_vt1636_patch_skew_on_vt3364 (struct lvds_setting_information*,struct lvds_chip_information*) ;
 TYPE_2__* viaparinfo ;

__attribute__((used)) static void lcd_patch_skew_dvp0(struct lvds_setting_information
    *plvds_setting_info,
    struct lvds_chip_information *plvds_chip_info)
{
 if (VT1636_LVDS == plvds_chip_info->lvds_chip_name) {
  switch (viaparinfo->chip_info->gfx_chip_name) {
  case 128:
   viafb_vt1636_patch_skew_on_vt3364(plvds_setting_info,
          plvds_chip_info);
   break;
  case 129:
   viafb_vt1636_patch_skew_on_vt3327(plvds_setting_info,
          plvds_chip_info);
   break;
  }
 }
}
