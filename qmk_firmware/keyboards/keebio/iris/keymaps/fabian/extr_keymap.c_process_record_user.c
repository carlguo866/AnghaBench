
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;







 int _ADJUST ;
 int _COLEMAK ;
 int _LOWER ;
 int _QWERTY ;
 int _RAISE ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int process_record_dynamic_macro (int,TYPE_2__*) ;
 int set_single_persistent_default_layer (int ) ;
 int update_tri_layer (int ,int ,int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  if (!process_record_dynamic_macro(keycode, record)) {
    return 0;
  }

  switch (keycode) {
    case 131:
      if (record->event.pressed) {
        set_single_persistent_default_layer(_COLEMAK);
      }
      return 0;
      break;
    case 129:
      if (record->event.pressed) {
        set_single_persistent_default_layer(_QWERTY);
      }
      return 0;
      break;
    case 130:
      if (record->event.pressed) {
        layer_on(_LOWER);
        update_tri_layer(_LOWER, _RAISE, _ADJUST);
      } else {
        layer_off(_LOWER);
        update_tri_layer(_LOWER, _RAISE, _ADJUST);
      }
      return 0;
      break;
    case 128:
      if (record->event.pressed) {
        layer_on(_RAISE);
        update_tri_layer(_LOWER, _RAISE, _ADJUST);
      } else {
        layer_off(_RAISE);
        update_tri_layer(_LOWER, _RAISE, _ADJUST);
      }
      return 0;
      break;
    case 132:
      if (record->event.pressed) {
        layer_on(_ADJUST);
      } else {
        layer_off(_ADJUST);
      }
      return 0;
      break;
  }
  return 1;
 }
