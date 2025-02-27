
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;


 int FB_BACKLIGHT_LEVELS ;
 void** bl_curve ;

__attribute__((used)) static void pmu_backlight_init_curve(u8 off, u8 min, u8 max)
{
 int i, flat, count, range = (max - min);

 bl_curve[0] = off;

 for (flat = 1; flat < (FB_BACKLIGHT_LEVELS / 16); ++flat)
  bl_curve[flat] = min;

 count = FB_BACKLIGHT_LEVELS * 15 / 16;
 for (i = 0; i < count; ++i)
  bl_curve[flat + i] = min + (range * (i + 1) / count);
}
