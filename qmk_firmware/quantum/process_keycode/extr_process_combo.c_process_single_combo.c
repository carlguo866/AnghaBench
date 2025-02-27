
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_6__ {scalar_t__ pressed; } ;
struct TYPE_7__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
typedef int int8_t ;
struct TYPE_8__ {scalar_t__* keys; int keycode; } ;
typedef TYPE_3__ combo_t ;


 scalar_t__ ALL_COMBO_KEYS_ARE_DOWN ;
 scalar_t__ COMBO_END ;
 int KEY_STATE_DOWN (size_t) ;
 int KEY_STATE_UP (size_t) ;
 int drop_buffer ;
 int is_active ;
 scalar_t__ pgm_read_word (scalar_t__ const*) ;
 int send_combo (int ,int) ;

__attribute__((used)) static bool process_single_combo(combo_t *combo, uint16_t keycode, keyrecord_t *record) {
    uint8_t count = 0;
    uint8_t index = -1;

    for (const uint16_t *keys = combo->keys;; ++count) {
        uint16_t key = pgm_read_word(&keys[count]);
        if (keycode == key) index = count;
        if (COMBO_END == key) break;
    }


    if (-1 == (int8_t)index) return 0;

    bool is_combo_active = is_active;

    if (record->event.pressed) {
        KEY_STATE_DOWN(index);

        if (is_combo_active) {
            if (ALL_COMBO_KEYS_ARE_DOWN) {
                send_combo(combo->keycode, 1);
                drop_buffer = 1;
            }
        }
    } else {
        if (ALL_COMBO_KEYS_ARE_DOWN) {
            send_combo(combo->keycode, 0);
        } else {

            is_combo_active = 0;
        }

        KEY_STATE_UP(index);
    }

    return is_combo_active;
}
