
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;







 int _COLEMAK ;
 int _COLEMAK_MOD_DH ;
 int _DVORAK ;
 int _QWERTY ;
 int _WORKMAN ;
 int print (char*) ;
 int set_single_persistent_default_layer (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case 129:
      if (record->event.pressed) {
        print("mode just switched to qwerty and this is a huge string\n");
        set_single_persistent_default_layer(_QWERTY);
      }
      return 0;
      break;
    case 128:
      if (record->event.pressed) {
        set_single_persistent_default_layer(_WORKMAN);
      }
      return 0;
      break;
    case 132:
      if (record->event.pressed) {
        set_single_persistent_default_layer(_COLEMAK);
      }
      return 0;
      break;
    case 131:
      if (record->event.pressed) {
        set_single_persistent_default_layer(_COLEMAK_MOD_DH);
      }
      return 0;
      break;
    case 130:
      if (record->event.pressed) {
        set_single_persistent_default_layer(_DVORAK);
      }
      return 0;
      break;
  }
  return 1;
}
