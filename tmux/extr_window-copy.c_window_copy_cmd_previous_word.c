
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct window_mode_entry {scalar_t__ prefix; } ;
struct window_copy_cmd_state {struct session* s; struct window_mode_entry* wme; } ;
struct session {int options; } ;
typedef enum window_copy_cmd_action { ____Placeholder_window_copy_cmd_action } window_copy_cmd_action ;


 int WINDOW_COPY_CMD_NOTHING ;
 char* options_get_string (int ,char*) ;
 int window_copy_cursor_previous_word (struct window_mode_entry*,char const*,int) ;

__attribute__((used)) static enum window_copy_cmd_action
window_copy_cmd_previous_word(struct window_copy_cmd_state *cs)
{
 struct window_mode_entry *wme = cs->wme;
 struct session *s = cs->s;
 u_int np = wme->prefix;
 const char *ws;

 ws = options_get_string(s->options, "word-separators");
 for (; np != 0; np--)
  window_copy_cursor_previous_word(wme, ws, 1);
 return (WINDOW_COPY_CMD_NOTHING);
}
