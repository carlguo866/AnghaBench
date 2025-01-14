
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct winlink {int idx; } ;
struct session {struct winlink* curw; } ;
struct TYPE_4__ {struct session* s; struct winlink* wl; } ;
struct cmdq_item {TYPE_2__ target; TYPE_1__* shared; } ;
struct cmd_find_state {struct session* s; } ;
struct cmd {int args; int * entry; } ;
typedef enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;
struct TYPE_3__ {struct cmd_find_state current; } ;


 int CMD_RETURN_ERROR ;
 int CMD_RETURN_NORMAL ;
 int args_has (int ,char) ;
 int cmd_find_from_session (struct cmd_find_state*,struct session*,int ) ;
 int cmd_last_window_entry ;
 int cmd_next_window_entry ;
 int cmd_previous_window_entry ;
 int cmdq_error (struct cmdq_item*,char*) ;
 int cmdq_insert_hook (struct session*,struct cmdq_item*,struct cmd_find_state*,char*) ;
 int recalculate_sizes () ;
 int server_redraw_session (struct session*) ;
 scalar_t__ session_last (struct session*) ;
 scalar_t__ session_next (struct session*,int) ;
 scalar_t__ session_previous (struct session*,int) ;
 scalar_t__ session_select (struct session*,int ) ;

__attribute__((used)) static enum cmd_retval
cmd_select_window_exec(struct cmd *self, struct cmdq_item *item)
{
 struct cmd_find_state *current = &item->shared->current;
 struct winlink *wl = item->target.wl;
 struct session *s = item->target.s;
 int next, previous, last, activity;

 next = self->entry == &cmd_next_window_entry;
 if (args_has(self->args, 'n'))
  next = 1;
 previous = self->entry == &cmd_previous_window_entry;
 if (args_has(self->args, 'p'))
  previous = 1;
 last = self->entry == &cmd_last_window_entry;
 if (args_has(self->args, 'l'))
  last = 1;

 if (next || previous || last) {
  activity = args_has(self->args, 'a');
  if (next) {
   if (session_next(s, activity) != 0) {
    cmdq_error(item, "no next window");
    return (CMD_RETURN_ERROR);
   }
  } else if (previous) {
   if (session_previous(s, activity) != 0) {
    cmdq_error(item, "no previous window");
    return (CMD_RETURN_ERROR);
   }
  } else {
   if (session_last(s) != 0) {
    cmdq_error(item, "no last window");
    return (CMD_RETURN_ERROR);
   }
  }
  cmd_find_from_session(current, s, 0);
  server_redraw_session(s);
  cmdq_insert_hook(s, item, current, "after-select-window");
 } else {




  if (args_has(self->args, 'T') && wl == s->curw) {
   if (session_last(s) != 0) {
    cmdq_error(item, "no last window");
    return (-1);
   }
   if (current->s == s)
    cmd_find_from_session(current, s, 0);
   server_redraw_session(s);
  } else if (session_select(s, wl->idx) == 0) {
   cmd_find_from_session(current, s, 0);
   server_redraw_session(s);
  }
  cmdq_insert_hook(s, item, current, "after-select-window");
 }
 recalculate_sizes();

 return (CMD_RETURN_NORMAL);
}
