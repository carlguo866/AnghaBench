
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; } ;
typedef TYPE_1__ qk_tap_dance_state_t ;


 int FR_C_CIRCUM ;
 int FR_O_HAT ;
 int send_french_unicode_char (int ,int ,int ) ;

void dance_o_c(qk_tap_dance_state_t *state, void *user_data)
{
    send_french_unicode_char(state->count, FR_O_HAT, FR_C_CIRCUM);
}
