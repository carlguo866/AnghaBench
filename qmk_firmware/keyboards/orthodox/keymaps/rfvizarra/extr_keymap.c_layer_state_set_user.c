
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int _ADJUST ;
 int _LOWER ;
 int _NAV ;
 int _NAV2 ;
 int _RAISE ;
 int update_tri_layer_state (int ,int ,int ,int ) ;

uint32_t layer_state_set_user(uint32_t state) {
  state = update_tri_layer_state(state, _LOWER, _RAISE, _ADJUST);
  state = update_tri_layer_state(state, _LOWER, _NAV, _NAV2);
  return state;
}
