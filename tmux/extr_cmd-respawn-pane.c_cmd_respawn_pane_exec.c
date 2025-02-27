
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct winlink {int dummy; } ;
struct window_pane {int window; int flags; } ;
struct spawn_context {int idx; int environ; int flags; int cwd; int argv; int argc; int * name; int * lc; struct window_pane* wp0; struct winlink* wl; struct session* s; struct cmdq_item* item; } ;
struct session {int dummy; } ;
struct TYPE_2__ {struct window_pane* wp; struct winlink* wl; struct session* s; } ;
struct cmdq_item {TYPE_1__ target; } ;
struct cmd {struct args* args; } ;
struct args_value {int dummy; } ;
struct args {int argv; int argc; } ;
typedef enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;


 int CMD_RETURN_ERROR ;
 int CMD_RETURN_NORMAL ;
 int PANE_REDRAW ;
 int SPAWN_KILL ;
 int SPAWN_RESPAWN ;
 char* args_first_value (struct args*,char,struct args_value**) ;
 int args_get (struct args*,char) ;
 scalar_t__ args_has (struct args*,char) ;
 char* args_next_value (struct args_value**) ;
 int cmdq_error (struct cmdq_item*,char*,char*) ;
 int environ_create () ;
 int environ_free (int ) ;
 int environ_put (int ,char const*) ;
 int free (char*) ;
 int memset (struct spawn_context*,int ,int) ;
 int server_status_window (int ) ;
 int * spawn_pane (struct spawn_context*,char**) ;

__attribute__((used)) static enum cmd_retval
cmd_respawn_pane_exec(struct cmd *self, struct cmdq_item *item)
{
 struct args *args = self->args;
 struct spawn_context sc;
 struct session *s = item->target.s;
 struct winlink *wl = item->target.wl;
 struct window_pane *wp = item->target.wp;
 char *cause = ((void*)0);
 const char *add;
 struct args_value *value;

 memset(&sc, 0, sizeof sc);
 sc.item = item;
 sc.s = s;
 sc.wl = wl;

 sc.wp0 = wp;
 sc.lc = ((void*)0);

 sc.name = ((void*)0);
 sc.argc = args->argc;
 sc.argv = args->argv;
 sc.environ = environ_create();

 add = args_first_value(args, 'e', &value);
 while (add != ((void*)0)) {
  environ_put(sc.environ, add);
  add = args_next_value(&value);
 }

 sc.idx = -1;
 sc.cwd = args_get(args, 'c');

 sc.flags = SPAWN_RESPAWN;
 if (args_has(args, 'k'))
  sc.flags |= SPAWN_KILL;

 if (spawn_pane(&sc, &cause) == ((void*)0)) {
  cmdq_error(item, "respawn pane failed: %s", cause);
  free(cause);
  return (CMD_RETURN_ERROR);
 }

 wp->flags |= PANE_REDRAW;
 server_status_window(wp->window);

 environ_free(sc.environ);
 return (CMD_RETURN_NORMAL);
}
