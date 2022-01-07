
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_18__ {int num; int current_task; } ;
struct TYPE_17__ {int transient; int res; } ;
typedef TYPE_1__ RCoreTask ;
typedef TYPE_2__ RCore ;


 int eprintf (char*) ;
 int helpCmdTasks (TYPE_2__*) ;
 int r_cons_println (int ) ;
 int r_core_task_break (TYPE_2__*,int) ;
 int r_core_task_decref (TYPE_1__*) ;
 int r_core_task_del (TYPE_2__*,int) ;
 int r_core_task_del_all_done (TYPE_2__*) ;
 int r_core_task_enqueue (TYPE_2__*,TYPE_1__*) ;
 TYPE_1__* r_core_task_get_incref (TYPE_2__*,int) ;
 int r_core_task_join (TYPE_2__*,int ,int) ;
 int r_core_task_list (TYPE_2__*,char const) ;
 TYPE_1__* r_core_task_new (TYPE_2__*,int,char const*,int *,TYPE_2__*) ;
 int r_num_math (int ,char const*) ;
 int r_sandbox_enable (int ) ;

__attribute__((used)) static int cmd_tasks(void *data, const char *input) {
 RCore *core = (RCore*) data;
 switch (input[0]) {
 case '\0':
 case 'j':
  r_core_task_list (core, *input);
  break;
 case 'b': {
  if (r_sandbox_enable (0)) {
   eprintf ("This command is disabled in sandbox mode\n");
   return 0;
  }
  int tid = r_num_math (core->num, input + 1);
  if (tid) {
   r_core_task_break (core, tid);
  }
  break;
 }
 case '&': {
  if (r_sandbox_enable (0)) {
   eprintf ("This command is disabled in sandbox mode\n");
   return 0;
  }
  int tid = r_num_math (core->num, input + 1);
  r_core_task_join (core, core->current_task, tid ? tid : -1);
  break;
 }
 case '=': {

  int tid = r_num_math (core->num, input + 1);
  if (tid) {
   RCoreTask *task = r_core_task_get_incref (core, tid);
   if (task) {
    if (task->res) {
     r_cons_println (task->res);
    }
    r_core_task_decref (task);
   } else {
    eprintf ("Cannot find task\n");
   }
  }
  break;
 }
 case '-':
  if (r_sandbox_enable (0)) {
   eprintf ("This command is disabled in sandbox mode\n");
   return 0;
  }
  if (input[1] == '*') {
   r_core_task_del_all_done (core);
  } else {
   r_core_task_del (core, r_num_math (core->num, input + 1));
  }
  break;
 case '?':
 default:
  helpCmdTasks (core);
  break;
 case ' ':
 case '_':
 case 't': {
  if (r_sandbox_enable (0)) {
   eprintf ("This command is disabled in sandbox mode\n");
   return 0;
  }
  RCoreTask *task = r_core_task_new (core, 1, input + 1, ((void*)0), core);
  if (!task) {
   break;
  }
  task->transient = input[0] == 't';
  r_core_task_enqueue (core, task);
  break;
 }
 }
 return 0;
}
