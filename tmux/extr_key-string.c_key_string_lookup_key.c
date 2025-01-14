
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct utf8_data {size_t size; int data; } ;
typedef int key_code ;
struct TYPE_3__ {int key; char* string; } ;


 int KEYC_ANY ;
 int KEYC_BASE ;
 char KEYC_CTRL ;
 int KEYC_DRAGGING ;
 int KEYC_ESCAPE ;
 int KEYC_FOCUS_IN ;
 int KEYC_FOCUS_OUT ;
 int KEYC_LITERAL ;
 int KEYC_MASK_KEY ;
 int KEYC_MASK_MOD ;
 int KEYC_MOUSE ;
 int KEYC_MOUSEMOVE_BORDER ;
 int KEYC_MOUSEMOVE_PANE ;
 int KEYC_MOUSEMOVE_STATUS ;
 int KEYC_MOUSEMOVE_STATUS_LEFT ;
 int KEYC_MOUSEMOVE_STATUS_RIGHT ;
 int KEYC_NONE ;
 int KEYC_NUSER ;
 int KEYC_PASTE_END ;
 int KEYC_PASTE_START ;
 int KEYC_SHIFT ;
 int KEYC_UNKNOWN ;
 int KEYC_USER ;
 scalar_t__ UTF8_DONE ;
 TYPE_1__* key_string_table ;
 int memcpy (char*,int ,size_t) ;
 int nitems (TYPE_1__*) ;
 int snprintf (char*,int,char*,int) ;
 int strlcat (char*,char*,int) ;
 size_t strlen (char*) ;
 scalar_t__ utf8_split (int,struct utf8_data*) ;
 int xsnprintf (char*,int,char*,int) ;

const char *
key_string_lookup_key(key_code key)
{
 static char out[32];
 char tmp[8];
 u_int i;
 struct utf8_data ud;
 size_t off;

 *out = '\0';


 if (key == KEYC_NONE)
  return ("None");


 if (key == KEYC_UNKNOWN)
  return ("Unknown");
 if (key == KEYC_ANY)
  return ("Any");
 if (key == KEYC_FOCUS_IN)
  return ("FocusIn");
 if (key == KEYC_FOCUS_OUT)
  return ("FocusOut");
 if (key == KEYC_PASTE_START)
  return ("PasteStart");
 if (key == KEYC_PASTE_END)
  return ("PasteEnd");
 if (key == KEYC_MOUSE)
  return ("Mouse");
 if (key == KEYC_DRAGGING)
  return ("Dragging");
 if (key == KEYC_MOUSEMOVE_PANE)
  return ("MouseMovePane");
 if (key == KEYC_MOUSEMOVE_STATUS)
  return ("MouseMoveStatus");
 if (key == KEYC_MOUSEMOVE_STATUS_LEFT)
  return ("MouseMoveStatusLeft");
 if (key == KEYC_MOUSEMOVE_STATUS_RIGHT)
  return ("MouseMoveStatusRight");
 if (key == KEYC_MOUSEMOVE_BORDER)
  return ("MouseMoveBorder");
 if (key >= KEYC_USER && key < KEYC_USER + KEYC_NUSER) {
  snprintf(out, sizeof out, "User%u", (u_int)(key - KEYC_USER));
  return (out);
 }


 if (key & KEYC_LITERAL) {
  snprintf(out, sizeof out, "%c", (int)(key & 0xff));
  return (out);
 }







 if ((key & KEYC_MASK_KEY) == 0)
     key = ' ' | KEYC_CTRL | (key & KEYC_MASK_MOD);


 if (key & KEYC_CTRL)
  strlcat(out, "C-", sizeof out);
 if (key & KEYC_ESCAPE)
  strlcat(out, "M-", sizeof out);
 if (key & KEYC_SHIFT)
  strlcat(out, "S-", sizeof out);
 key &= KEYC_MASK_KEY;


 for (i = 0; i < nitems(key_string_table); i++) {
  if (key == key_string_table[i].key)
   break;
 }
 if (i != nitems(key_string_table)) {
  strlcat(out, key_string_table[i].string, sizeof out);
  return (out);
 }


 if (key > 127 && key < KEYC_BASE) {
  if (utf8_split(key, &ud) == UTF8_DONE) {
   off = strlen(out);
   memcpy(out + off, ud.data, ud.size);
   out[off + ud.size] = '\0';
   return (out);
  }
 }


 if (key == 127 || key > 255) {
  snprintf(out, sizeof out, "Invalid#%llx", key);
  return (out);
 }


 if (key <= 32) {
  if (key == 0 || key > 26)
   xsnprintf(tmp, sizeof tmp, "C-%c", (int)(64 + key));
  else
   xsnprintf(tmp, sizeof tmp, "C-%c", (int)(96 + key));
 } else if (key >= 32 && key <= 126) {
  tmp[0] = key;
  tmp[1] = '\0';
 } else if (key >= 128)
  xsnprintf(tmp, sizeof tmp, "\\%llo", key);

 strlcat(out, tmp, sizeof out);
 return (out);
}
