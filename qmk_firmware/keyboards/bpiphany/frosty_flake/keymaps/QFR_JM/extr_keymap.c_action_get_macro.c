
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int macro_t ;
struct TYPE_4__ {int pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 int const* MACRO_NONE ;


 int SEND_STRING (char*) ;

const macro_t *action_get_macro(keyrecord_t *record, uint8_t id, uint8_t opt) {
    switch(id) {
        case 128:
            if (record->event.pressed) {
                SEND_STRING("<- ");

            }
            break;
        case 129:
            if (record->event.pressed) {
                SEND_STRING("%>% ");

            }
            break;
    }
    return MACRO_NONE;
}
