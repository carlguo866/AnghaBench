
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wait_channel {char const* name; } ;
struct cmdq_item {int dummy; } ;
struct cmd {struct args* args; } ;
struct args {char** argv; } ;
typedef enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;


 struct wait_channel* RB_FIND (int ,int *,struct wait_channel*) ;
 scalar_t__ args_has (struct args*,unsigned char) ;
 int cmd_wait_for_lock (struct cmdq_item*,char const*,struct wait_channel*) ;
 int cmd_wait_for_signal (struct cmdq_item*,char const*,struct wait_channel*) ;
 int cmd_wait_for_unlock (struct cmdq_item*,char const*,struct wait_channel*) ;
 int cmd_wait_for_wait (struct cmdq_item*,char const*,struct wait_channel*) ;
 int wait_channels ;

__attribute__((used)) static enum cmd_retval
cmd_wait_for_exec(struct cmd *self, struct cmdq_item *item)
{
 struct args *args = self->args;
 const char *name = args->argv[0];
 struct wait_channel *wc, wc0;

 wc0.name = name;
 wc = RB_FIND(wait_channels, &wait_channels, &wc0);

 if (args_has(args, 'S'))
  return (cmd_wait_for_signal(item, name, wc));
 if (args_has(args, 'L'))
  return (cmd_wait_for_lock(item, name, wc));
 if (args_has(args, 'U'))
  return (cmd_wait_for_unlock(item, name, wc));
 return (cmd_wait_for_wait(item, name, wc));
}
