
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int color_delay; } ;
struct TYPE_3__ {int color_delay; } ;
typedef int Colours_preset_t ;


 TYPE_2__ COLOURS_PAL_setup ;
 int COLOURS_PRESET_CUSTOM ;
 int COLOURS_PRESET_STANDARD ;
 scalar_t__ Util_almostequal (int ,int ,double) ;
 TYPE_1__ default_setup ;

Colours_preset_t COLOURS_PAL_GetPreset()
{
 if (Util_almostequal(COLOURS_PAL_setup.color_delay, default_setup.color_delay, 0.001))
  return COLOURS_PRESET_STANDARD;
 return COLOURS_PRESET_CUSTOM;
}
