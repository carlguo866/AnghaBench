
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct child_process {int * argv; int pid; } ;


 int child_process_clear (struct child_process*) ;
 int trace2_child_exit (struct child_process*,int) ;
 int wait_or_whine (int ,int ,int ) ;

int finish_command(struct child_process *cmd)
{
 int ret = wait_or_whine(cmd->pid, cmd->argv[0], 0);
 trace2_child_exit(cmd, ret);
 child_process_clear(cmd);
 return ret;
}
