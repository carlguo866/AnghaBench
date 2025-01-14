
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_entry {scalar_t__ type; int code; int keycode; } ;
struct input_keymap_entry {int flags; int len; int scancode; int index; int keycode; } ;
struct input_dev {scalar_t__ keycode; } ;


 int EINVAL ;
 int INPUT_KEYMAP_BY_INDEX ;
 scalar_t__ KE_KEY ;
 int memcpy (int ,int *,int) ;
 int sparse_keymap_get_key_index (struct input_dev*,struct key_entry const*) ;
 struct key_entry* sparse_keymap_locate (struct input_dev*,struct input_keymap_entry*) ;

__attribute__((used)) static int sparse_keymap_getkeycode(struct input_dev *dev,
        struct input_keymap_entry *ke)
{
 const struct key_entry *key;

 if (dev->keycode) {
  key = sparse_keymap_locate(dev, ke);
  if (key && key->type == KE_KEY) {
   ke->keycode = key->keycode;
   if (!(ke->flags & INPUT_KEYMAP_BY_INDEX))
    ke->index =
     sparse_keymap_get_key_index(dev, key);
   ke->len = sizeof(key->code);
   memcpy(ke->scancode, &key->code, sizeof(key->code));
   return 0;
  }
 }

 return -EINVAL;
}
