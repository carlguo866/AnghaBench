
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qk_tap_dance_state_t ;
struct TYPE_2__ {int state; } ;
 int _FUNCTION ;
 int _MOUSE ;
 int _NUMPAD ;
 int layer_off (int ) ;
 TYPE_1__ ttt_state ;

void TTT_reset (qk_tap_dance_state_t *state, void *user_data) {
  switch (ttt_state.state) {
    case 130: break;
    case 131: layer_off(_FUNCTION); break;
    case 132: break;
    case 134: layer_off(_NUMPAD); break;
    case 133: break;
    case 128: break;
    case 129: layer_off(_MOUSE); break;
  }
  ttt_state.state = 0;
}
