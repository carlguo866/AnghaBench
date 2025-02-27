
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef char u_char ;
struct window_pane {scalar_t__ id; int event; TYPE_2__* screen; TYPE_1__* window; } ;
struct utf8_data {char* data; size_t size; } ;
struct mouse_event {int wp; } ;
struct input_key_ent {int flags; int key; char* data; } ;
typedef int key_code ;
struct TYPE_4__ {int mode; } ;
struct TYPE_3__ {int options; } ;


 int INPUTKEY_CURSOR ;
 int INPUTKEY_KEYPAD ;
 int KEYC_BASE ;
 int KEYC_ESCAPE ;
 scalar_t__ KEYC_IS_MOUSE (int) ;
 int KEYC_LITERAL ;
 int KEYC_XTERM ;
 int MODE_KCURSOR ;
 int MODE_KKEYPAD ;
 scalar_t__ UTF8_DONE ;
 int bufferevent_write (int ,char*,size_t) ;
 int free (char*) ;
 int input_key_mouse (struct window_pane*,struct mouse_event*) ;
 struct input_key_ent* input_keys ;
 int key_string_lookup_key (int) ;
 int log_debug (char*,int,...) ;
 scalar_t__ nitems (struct input_key_ent*) ;
 scalar_t__ options_get_number (int ,char*) ;
 size_t strlen (char*) ;
 scalar_t__ utf8_split (int,struct utf8_data*) ;
 char* xterm_keys_lookup (int) ;

void
input_key(struct window_pane *wp, key_code key, struct mouse_event *m)
{
 const struct input_key_ent *ike;
 u_int i;
 size_t dlen;
 char *out;
 key_code justkey;
 struct utf8_data ud;

 log_debug("writing key 0x%llx (%s) to %%%u", key,
     key_string_lookup_key(key), wp->id);


 if (KEYC_IS_MOUSE(key)) {
  if (m != ((void*)0) && m->wp != -1 && (u_int)m->wp == wp->id)
   input_key_mouse(wp, m);
  return;
 }


 if (key & KEYC_LITERAL) {
  ud.data[0] = (u_char)key;
  bufferevent_write(wp->event, &ud.data[0], 1);
  return;
 }





 justkey = (key & ~(KEYC_XTERM|KEYC_ESCAPE));
 if (justkey <= 0x7f) {
  if (key & KEYC_ESCAPE)
   bufferevent_write(wp->event, "\033", 1);
  ud.data[0] = justkey;
  bufferevent_write(wp->event, &ud.data[0], 1);
  return;
 }
 if (justkey > 0x7f && justkey < KEYC_BASE) {
  if (utf8_split(justkey, &ud) != UTF8_DONE)
   return;
  if (key & KEYC_ESCAPE)
   bufferevent_write(wp->event, "\033", 1);
  bufferevent_write(wp->event, ud.data, ud.size);
  return;
 }





 if (options_get_number(wp->window->options, "xterm-keys")) {
  if ((out = xterm_keys_lookup(key)) != ((void*)0)) {
   bufferevent_write(wp->event, out, strlen(out));
   free(out);
   return;
  }
 }
 key &= ~KEYC_XTERM;


 for (i = 0; i < nitems(input_keys); i++) {
  ike = &input_keys[i];

  if ((ike->flags & INPUTKEY_KEYPAD) &&
      !(wp->screen->mode & MODE_KKEYPAD))
   continue;
  if ((ike->flags & INPUTKEY_CURSOR) &&
      !(wp->screen->mode & MODE_KCURSOR))
   continue;

  if ((key & KEYC_ESCAPE) && (ike->key | KEYC_ESCAPE) == key)
   break;
  if (ike->key == key)
   break;
 }
 if (i == nitems(input_keys)) {
  log_debug("key 0x%llx missing", key);
  return;
 }
 dlen = strlen(ike->data);
 log_debug("found key 0x%llx: \"%s\"", key, ike->data);


 if (key & KEYC_ESCAPE)
  bufferevent_write(wp->event, "\033", 1);
 bufferevent_write(wp->event, ike->data, dlen);
}
