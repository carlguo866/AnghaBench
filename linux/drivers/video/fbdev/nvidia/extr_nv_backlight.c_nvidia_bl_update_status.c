
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvidia_par {int fpSyncs; int PRAMDAC; int PMC; int PCRTC0; int FlatPanel; } ;
struct TYPE_2__ {scalar_t__ power; scalar_t__ fb_blank; int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;


 scalar_t__ FB_BLANK_UNBLANK ;
 int NV_RD32 (int ,int) ;
 int NV_WR32 (int ,int,int) ;
 struct nvidia_par* bl_get_data (struct backlight_device*) ;
 int nvidia_bl_get_level_brightness (struct nvidia_par*,int) ;

__attribute__((used)) static int nvidia_bl_update_status(struct backlight_device *bd)
{
 struct nvidia_par *par = bl_get_data(bd);
 u32 tmp_pcrt, tmp_pmc, fpcontrol;
 int level;

 if (!par->FlatPanel)
  return 0;

 if (bd->props.power != FB_BLANK_UNBLANK ||
     bd->props.fb_blank != FB_BLANK_UNBLANK)
  level = 0;
 else
  level = bd->props.brightness;

 tmp_pmc = NV_RD32(par->PMC, 0x10F0) & 0x0000FFFF;
 tmp_pcrt = NV_RD32(par->PCRTC0, 0x081C) & 0xFFFFFFFC;
 fpcontrol = NV_RD32(par->PRAMDAC, 0x0848) & 0xCFFFFFCC;

 if (level > 0) {
  tmp_pcrt |= 0x1;
  tmp_pmc |= (1 << 31);
  tmp_pmc |= nvidia_bl_get_level_brightness(par, level) << 16;
  fpcontrol |= par->fpSyncs;
 } else
  fpcontrol |= 0x20000022;

 NV_WR32(par->PCRTC0, 0x081C, tmp_pcrt);
 NV_WR32(par->PMC, 0x10F0, tmp_pmc);
 NV_WR32(par->PRAMDAC, 0x848, fpcontrol);

 return 0;
}
