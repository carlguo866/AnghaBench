
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD (int ) ;
 int KC_C ;
 int KC_LEFT ;
 int KC_LSHIFT ;
 int KC_NO ;
 int KC_RIGHT ;
 int PRESS (int ) ;
 int RELEASE (int ) ;
 int VIM_LEADER (int ) ;
 int print (char*) ;

void VIM_YANK_LINE(void) {
  print("\e[31mY\e[0m");
  VIM_LEADER(KC_NO);
  CMD(KC_LEFT);
  PRESS(KC_LSHIFT);
    CMD(KC_RIGHT);
  RELEASE(KC_LSHIFT);
  CMD(KC_C);
}
