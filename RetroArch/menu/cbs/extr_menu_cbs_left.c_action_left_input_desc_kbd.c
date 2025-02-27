
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int** input_keymapper_ids; } ;
struct TYPE_6__ {TYPE_1__ uints; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_7__ {unsigned int key; } ;


 int MENU_SETTINGS_INPUT_DESC_KBD_BEGIN ;
 unsigned int RARCH_FIRST_CUSTOM_BIND ;
 int RARCH_MAX_KEYS ;
 TYPE_2__* config_get_ptr () ;
 TYPE_3__* key_descriptors ;

__attribute__((used)) static int action_left_input_desc_kbd(unsigned type, const char *label,
   bool wraparound)
{
   unsigned remap_id;
   unsigned key_id, user_idx, btn_idx;
   settings_t *settings = config_get_ptr();

   if (!settings)
      return 0;

   user_idx = (type - MENU_SETTINGS_INPUT_DESC_KBD_BEGIN) / RARCH_FIRST_CUSTOM_BIND;
   btn_idx = (type - MENU_SETTINGS_INPUT_DESC_KBD_BEGIN) - RARCH_FIRST_CUSTOM_BIND * user_idx;

   remap_id =
      settings->uints.input_keymapper_ids[user_idx][btn_idx];

   for (key_id = 0; key_id < RARCH_MAX_KEYS - 1; key_id++)
   {
      if (remap_id == key_descriptors[key_id].key)
         break;
   }

   if (key_id > 0)
      key_id--;
   else
      key_id = (RARCH_MAX_KEYS - 1) + MENU_SETTINGS_INPUT_DESC_KBD_BEGIN;

   settings->uints.input_keymapper_ids[user_idx][btn_idx] = key_descriptors[key_id].key;

   return 0;
}
