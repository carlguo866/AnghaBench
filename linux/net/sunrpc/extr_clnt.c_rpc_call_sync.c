
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task_setup {int flags; int callback_data; int * callback_ops; struct rpc_message const* rpc_message; struct rpc_clnt* rpc_client; } ;
struct rpc_task {int tk_status; } ;
struct rpc_message {int dummy; } ;
struct rpc_clnt {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct rpc_task*) ;
 int PTR_ERR (struct rpc_task*) ;
 int RPC_TASK_ASYNC ;
 int WARN_ON_ONCE (int) ;
 int rpc_default_ops ;
 int rpc_put_task (struct rpc_task*) ;
 int rpc_release_calldata (int *,int ) ;
 struct rpc_task* rpc_run_task (struct rpc_task_setup*) ;

int rpc_call_sync(struct rpc_clnt *clnt, const struct rpc_message *msg, int flags)
{
 struct rpc_task *task;
 struct rpc_task_setup task_setup_data = {
  .rpc_client = clnt,
  .rpc_message = msg,
  .callback_ops = &rpc_default_ops,
  .flags = flags,
 };
 int status;

 WARN_ON_ONCE(flags & RPC_TASK_ASYNC);
 if (flags & RPC_TASK_ASYNC) {
  rpc_release_calldata(task_setup_data.callback_ops,
   task_setup_data.callback_data);
  return -EINVAL;
 }

 task = rpc_run_task(&task_setup_data);
 if (IS_ERR(task))
  return PTR_ERR(task);
 status = task->tk_status;
 rpc_put_task(task);
 return status;
}
