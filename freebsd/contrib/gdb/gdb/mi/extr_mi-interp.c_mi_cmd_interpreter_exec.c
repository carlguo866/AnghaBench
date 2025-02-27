
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct interp_procs {int dummy; } ;
struct interp {int dummy; } ;
typedef enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;


 int ALL_CLEANUPS ;
 int MI_CMD_DONE ;
 int MI_CMD_ERROR ;
 int add_continuation (int ,int *) ;
 int do_exec_error_cleanups (int ) ;
 int fputs_unfiltered (char*,int ) ;
 scalar_t__ interp_exec (struct interp*,char*) ;
 int interp_exec_p (struct interp*) ;
 struct interp* interp_lookup (char*) ;
 int memcpy (char*,char*,int) ;
 int mi_error_last_message () ;
 int mi_error_message ;
 int mi_insert_notify_hooks () ;
 int mi_interpreter_exec_continuation ;
 int mi_remove_notify_hooks () ;
 int raw_stdout ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 int sync_execution ;
 scalar_t__ target_can_async_p () ;
 scalar_t__ target_executing ;
 int xasprintf (int *,char*,...) ;
 int xfree (char*) ;
 char* xmalloc (int) ;

enum mi_cmd_result
mi_cmd_interpreter_exec (char *command, char **argv, int argc)
{
  struct interp *interp_to_use;
  enum mi_cmd_result result = MI_CMD_DONE;
  int i;
  struct interp_procs *procs;

  if (argc < 2)
    {
      xasprintf (&mi_error_message,
   "mi_cmd_interpreter_exec: Usage: -interpreter-exec interp command");
      return MI_CMD_ERROR;
    }

  interp_to_use = interp_lookup (argv[0]);
  if (interp_to_use == ((void*)0))
    {
      xasprintf (&mi_error_message,
   "mi_cmd_interpreter_exec: could not find interpreter \"%s\"",
   argv[0]);
      return MI_CMD_ERROR;
    }

  if (!interp_exec_p (interp_to_use))
    {
      xasprintf (&mi_error_message,
   "mi_cmd_interpreter_exec: interpreter \"%s\" does not support command execution",
   argv[0]);
      return MI_CMD_ERROR;
    }





  mi_insert_notify_hooks ();



  for (i = 1; i < argc; i++)
    {
      char *buff = ((void*)0);


      if (target_can_async_p () && (strcmp (argv[0], "console") == 0))
 {
   int len = strlen (argv[i]);
   buff = xmalloc (len + 2);
   memcpy (buff, argv[i], len);
   buff[len] = '&';
   buff[len + 1] = '\0';
 }






      sync_execution = 1;
      if (interp_exec (interp_to_use, argv[i]) < 0)
 {
   mi_error_last_message ();
   result = MI_CMD_ERROR;
   break;
 }
      xfree (buff);
      do_exec_error_cleanups (ALL_CLEANUPS);
      sync_execution = 0;
    }

  mi_remove_notify_hooks ();






  if (target_can_async_p () && target_executing)
    {
      fputs_unfiltered ("^running\n", raw_stdout);
      add_continuation (mi_interpreter_exec_continuation, ((void*)0));
    }

  return result;
}
