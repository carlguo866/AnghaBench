
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ enable; } ;


 TYPE_1__ rgblight_config ;
 int rgblight_disable_noeeprom () ;
 int rgblight_enable_noeeprom () ;
 int xprintf (char*,int) ;

void rgblight_toggle_noeeprom(void) {
  xprintf("rgblight toggle [NOEEPROM]: rgblight_config.enable = %u\n", !rgblight_config.enable);
  if (rgblight_config.enable) {
    rgblight_disable_noeeprom();
  }
  else {
    rgblight_enable_noeeprom();
  }
}
