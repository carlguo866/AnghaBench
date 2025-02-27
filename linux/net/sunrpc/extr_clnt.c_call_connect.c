
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_xprt {int dummy; } ;
struct rpc_task {scalar_t__ tk_status; int tk_flags; int tk_action; int tk_pid; TYPE_1__* tk_rqstp; } ;
struct TYPE_2__ {struct rpc_xprt* rq_xprt; } ;


 int ENOTCONN ;
 int RPC_TASK_NOCONNECT ;
 int call_connect_status ;
 int call_transmit ;
 int dprintk (char*,int ,struct rpc_xprt*,char*) ;
 int rpc_call_rpcerror (struct rpc_task*,int ) ;
 int rpc_task_handle_transmitted (struct rpc_task*) ;
 scalar_t__ rpc_task_transmitted (struct rpc_task*) ;
 int xprt_connect (struct rpc_task*) ;
 scalar_t__ xprt_connected (struct rpc_xprt*) ;
 int xprt_prepare_transmit (struct rpc_task*) ;

__attribute__((used)) static void
call_connect(struct rpc_task *task)
{
 struct rpc_xprt *xprt = task->tk_rqstp->rq_xprt;

 if (rpc_task_transmitted(task)) {
  rpc_task_handle_transmitted(task);
  return;
 }

 if (xprt_connected(xprt)) {
  task->tk_action = call_transmit;
  return;
 }

 dprintk("RPC: %5u call_connect xprt %p %s connected\n",
   task->tk_pid, xprt,
   (xprt_connected(xprt) ? "is" : "is not"));

 task->tk_action = call_connect_status;
 if (task->tk_status < 0)
  return;
 if (task->tk_flags & RPC_TASK_NOCONNECT) {
  rpc_call_rpcerror(task, -ENOTCONN);
  return;
 }
 if (!xprt_prepare_transmit(task))
  return;
 xprt_connect(task);
}
