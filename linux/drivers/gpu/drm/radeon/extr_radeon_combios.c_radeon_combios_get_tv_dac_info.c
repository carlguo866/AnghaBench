
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct radeon_encoder_tv_dac {int ps2_tvdac_adj; int pal_tvdac_adj; int ntsc_tvdac_adj; int tv_std; } ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct radeon_encoder {TYPE_1__ base; } ;
struct radeon_device {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 int COMBIOS_CRT_INFO_TABLE ;
 int COMBIOS_TV_INFO_TABLE ;
 int DRM_INFO (char*) ;
 int GFP_KERNEL ;
 int RBIOS8 (scalar_t__) ;
 scalar_t__ combios_get_table_offset (struct drm_device*,int ) ;
 struct radeon_encoder_tv_dac* kzalloc (int,int ) ;
 int radeon_combios_get_tv_info (struct radeon_device*) ;
 int radeon_legacy_get_tv_dac_info_from_table (struct radeon_device*,struct radeon_encoder_tv_dac*) ;

struct radeon_encoder_tv_dac *radeon_combios_get_tv_dac_info(struct
            radeon_encoder
            *encoder)
{
 struct drm_device *dev = encoder->base.dev;
 struct radeon_device *rdev = dev->dev_private;
 uint16_t dac_info;
 uint8_t rev, bg, dac;
 struct radeon_encoder_tv_dac *tv_dac = ((void*)0);
 int found = 0;

 tv_dac = kzalloc(sizeof(struct radeon_encoder_tv_dac), GFP_KERNEL);
 if (!tv_dac)
  return ((void*)0);


 dac_info = combios_get_table_offset(dev, COMBIOS_TV_INFO_TABLE);
 if (dac_info) {
  rev = RBIOS8(dac_info + 0x3);
  if (rev > 4) {
   bg = RBIOS8(dac_info + 0xc) & 0xf;
   dac = RBIOS8(dac_info + 0xd) & 0xf;
   tv_dac->ps2_tvdac_adj = (bg << 16) | (dac << 20);

   bg = RBIOS8(dac_info + 0xe) & 0xf;
   dac = RBIOS8(dac_info + 0xf) & 0xf;
   tv_dac->pal_tvdac_adj = (bg << 16) | (dac << 20);

   bg = RBIOS8(dac_info + 0x10) & 0xf;
   dac = RBIOS8(dac_info + 0x11) & 0xf;
   tv_dac->ntsc_tvdac_adj = (bg << 16) | (dac << 20);

   if (tv_dac->ps2_tvdac_adj)
    found = 1;
  } else if (rev > 1) {
   bg = RBIOS8(dac_info + 0xc) & 0xf;
   dac = (RBIOS8(dac_info + 0xc) >> 4) & 0xf;
   tv_dac->ps2_tvdac_adj = (bg << 16) | (dac << 20);

   bg = RBIOS8(dac_info + 0xd) & 0xf;
   dac = (RBIOS8(dac_info + 0xd) >> 4) & 0xf;
   tv_dac->pal_tvdac_adj = (bg << 16) | (dac << 20);

   bg = RBIOS8(dac_info + 0xe) & 0xf;
   dac = (RBIOS8(dac_info + 0xe) >> 4) & 0xf;
   tv_dac->ntsc_tvdac_adj = (bg << 16) | (dac << 20);

   if (tv_dac->ps2_tvdac_adj)
    found = 1;
  }
  tv_dac->tv_std = radeon_combios_get_tv_info(rdev);
 }
 if (!found) {

  dac_info =
      combios_get_table_offset(dev, COMBIOS_CRT_INFO_TABLE);
  if (dac_info) {
   rev = RBIOS8(dac_info) & 0x3;
   if (rev < 2) {
    bg = RBIOS8(dac_info + 0x3) & 0xf;
    dac = (RBIOS8(dac_info + 0x3) >> 4) & 0xf;
    tv_dac->ps2_tvdac_adj =
        (bg << 16) | (dac << 20);
    tv_dac->pal_tvdac_adj = tv_dac->ps2_tvdac_adj;
    tv_dac->ntsc_tvdac_adj = tv_dac->ps2_tvdac_adj;

    if (tv_dac->ps2_tvdac_adj)
     found = 1;
   } else {
    bg = RBIOS8(dac_info + 0x4) & 0xf;
    dac = RBIOS8(dac_info + 0x5) & 0xf;
    tv_dac->ps2_tvdac_adj =
        (bg << 16) | (dac << 20);
    tv_dac->pal_tvdac_adj = tv_dac->ps2_tvdac_adj;
    tv_dac->ntsc_tvdac_adj = tv_dac->ps2_tvdac_adj;

    if (tv_dac->ps2_tvdac_adj)
     found = 1;
   }
  } else {
   DRM_INFO("No TV DAC info found in BIOS\n");
  }
 }

 if (!found)
  radeon_legacy_get_tv_dac_info_from_table(rdev, tv_dac);

 return tv_dac;
}
