
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int biton32 (int ) ;
 int rgblight_setrgb (int,int,int) ;

uint32_t layer_state_set_user(uint32_t state) {
  switch (biton32(state)) {
    case 0:
      rgblight_setrgb (0xFF, 0x00, 0x00);
      break;
    case 1:
      rgblight_setrgb (0x00, 0xFF, 0x00);
      break;
    case 2:
      rgblight_setrgb (0x00, 0x00, 0xFF);
      break;
    case 3:
      rgblight_setrgb (0xFF, 0xFF, 0xFF);
      break;
    case 4:
      rgblight_setrgb (0xFF, 0x00, 0xFF);
      break;
    default:
      rgblight_setrgb (0xFF, 0x00, 0x00);
      break;
    }
  return state;
}
