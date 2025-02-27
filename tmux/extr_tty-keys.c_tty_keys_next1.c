
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;
typedef size_t u_int ;
typedef int u_char ;
struct utf8_data {size_t size; } ;
struct tty_key {scalar_t__ key; struct tty_key* next; } ;
struct tty {struct client* client; } ;
struct client {int name; } ;
typedef scalar_t__ key_code ;
typedef enum utf8_state { ____Placeholder_utf8_state } utf8_state ;


 scalar_t__ KEYC_UNKNOWN ;
 int UTF8_DONE ;
 int UTF8_MORE ;
 int log_debug (char*,int ,int,...) ;
 struct tty_key* tty_keys_find (struct tty*,char const*,size_t,size_t*) ;
 int utf8_append (struct utf8_data*,int ) ;
 int utf8_combine (struct utf8_data*,scalar_t__*) ;
 int utf8_open (struct utf8_data*,int ) ;
 int xterm_keys_find (char const*,size_t,size_t*,scalar_t__*) ;

__attribute__((used)) static int
tty_keys_next1(struct tty *tty, const char *buf, size_t len, key_code *key,
    size_t *size, int expired)
{
 struct client *c = tty->client;
 struct tty_key *tk, *tk1;
 struct utf8_data ud;
 enum utf8_state more;
 u_int i;
 wchar_t wc;
 int n;

 log_debug("%s: next key is %zu (%.*s) (expired=%d)", c->name, len,
     (int)len, buf, expired);


 tk = tty_keys_find(tty, buf, len, size);
 if (tk != ((void*)0) && tk->key != KEYC_UNKNOWN) {
  tk1 = tk;
  do
   log_debug("%s: keys in list: %#llx", c->name, tk1->key);
  while ((tk1 = tk1->next) != ((void*)0));
  if (tk->next != ((void*)0) && !expired)
   return (1);
  *key = tk->key;
  return (0);
 }


 n = xterm_keys_find(buf, len, size, key);
 if (n == 0)
  return (0);
 if (n == 1 && !expired)
  return (1);


 more = utf8_open(&ud, (u_char)*buf);
 if (more == UTF8_MORE) {
  *size = ud.size;
  if (len < ud.size) {
   if (!expired)
    return (1);
   return (-1);
  }
  for (i = 1; i < ud.size; i++)
   more = utf8_append(&ud, (u_char)buf[i]);
  if (more != UTF8_DONE)
   return (-1);

  if (utf8_combine(&ud, &wc) != UTF8_DONE)
   return (-1);
  *key = wc;

  log_debug("%s: UTF-8 key %.*s %#llx", c->name, (int)ud.size,
      buf, *key);
  return (0);
 }

 return (-1);
}
