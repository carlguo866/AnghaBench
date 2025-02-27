
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int tab; scalar_t__ tabs; } ;
struct TYPE_9__ {int stkcmd; int config; TYPE_1__ visual; } ;
struct TYPE_8__ {char* name; } ;
typedef TYPE_2__ RCoreVisualTab ;
typedef TYPE_3__ RCore ;


 size_t PIDX ;
 int free (int ) ;
 char const** printfmtColumns ;
 char const** printfmtSingle ;
 scalar_t__ r_config_get_i (int ,char*) ;
 TYPE_2__* r_list_get_n (scalar_t__,int ) ;
 int r_str_newf (int ) ;
 int stackPrintCommand (TYPE_3__*) ;

__attribute__((used)) static const char *__core_visual_print_command(RCore *core) {
 if (core->visual.tabs) {
  RCoreVisualTab *tab = r_list_get_n (core->visual.tabs, core->visual.tab);
  if (tab && tab->name[0] == ':') {
   return tab->name + 1;
  }
 }
 if (r_config_get_i (core->config, "scr.dumpcols")) {
  free (core->stkcmd);
  core->stkcmd = r_str_newf (stackPrintCommand (core));
  return printfmtColumns[PIDX];
 }
 return printfmtSingle[PIDX];
}
