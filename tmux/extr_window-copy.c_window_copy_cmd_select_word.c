
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_mode_entry {struct window_copy_mode_data* data; } ;
struct window_copy_mode_data {scalar_t__ rectflag; int lineflag; } ;
struct window_copy_cmd_state {struct session* s; struct window_mode_entry* wme; } ;
struct session {int options; } ;
typedef enum window_copy_cmd_action { ____Placeholder_window_copy_cmd_action } window_copy_cmd_action ;


 int LINE_SEL_LEFT_RIGHT ;
 int WINDOW_COPY_CMD_REDRAW ;
 char* options_get_string (int ,char*) ;
 int window_copy_cursor_next_word_end (struct window_mode_entry*,char const*) ;
 int window_copy_cursor_previous_word (struct window_mode_entry*,char const*,int ) ;
 int window_copy_start_selection (struct window_mode_entry*) ;

__attribute__((used)) static enum window_copy_cmd_action
window_copy_cmd_select_word(struct window_copy_cmd_state *cs)
{
 struct window_mode_entry *wme = cs->wme;
 struct session *s = cs->s;
 struct window_copy_mode_data *data = wme->data;
 const char *ws;

 data->lineflag = LINE_SEL_LEFT_RIGHT;
 data->rectflag = 0;

 ws = options_get_string(s->options, "word-separators");
 window_copy_cursor_previous_word(wme, ws, 0);
 window_copy_start_selection(wme);
 window_copy_cursor_next_word_end(wme, ws);

 return (WINDOW_COPY_CMD_REDRAW);
}
