
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int my_timer ;
 int rgblight_enable_noeeprom () ;
 int rgblight_mode_noeeprom (int) ;
 int rgblight_sethsv_noeeprom (int,int,int) ;
 int runonce ;
 int timer_elapsed (int ) ;

__attribute__ ((weak))
void matrix_scan_user(void) {
}
