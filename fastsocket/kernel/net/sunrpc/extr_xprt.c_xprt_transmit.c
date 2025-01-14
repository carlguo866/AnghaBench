
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ qlen; } ;
struct TYPE_9__ {int max_slots; int pending_u; int sending_u; int bklog_u; scalar_t__ recvs; scalar_t__ sends; int req_u; } ;
struct TYPE_8__ {scalar_t__ qlen; } ;
struct TYPE_7__ {scalar_t__ qlen; } ;
struct rpc_xprt {int transport_lock; TYPE_5__ pending; TYPE_4__ stat; TYPE_3__ sending; TYPE_2__ backlog; int num_reqs; TYPE_1__* ops; int connect_cookie; int timer; int recv; } ;
struct rpc_task {int tk_status; int tk_flags; int tk_pid; struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {int rq_reply_bytes_recvd; int rq_xtime; int rq_connect_cookie; int rq_bytes_sent; int rq_list; int rq_rcv_buf; int rq_private_buf; int rq_slen; struct rpc_xprt* rq_xprt; } ;
struct TYPE_6__ {int (* send_request ) (struct rpc_task*) ;int (* set_retrans_timeout ) (struct rpc_task*) ;} ;


 int ENOTCONN ;
 int RPC_TASK_SENT ;
 int atomic_read (int *) ;
 int del_singleshot_timer_sync (int *) ;
 int dprintk (char*,int ,...) ;
 int ktime_get () ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ rpc_reply_expected (struct rpc_task*) ;
 int rpc_sleep_on (TYPE_5__*,struct rpc_task*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct rpc_task*) ;
 int stub2 (struct rpc_task*) ;
 int xprt_connected (struct rpc_xprt*) ;
 int xprt_reset_majortimeo (struct rpc_rqst*) ;
 int xprt_timer ;

void xprt_transmit(struct rpc_task *task)
{
 struct rpc_rqst *req = task->tk_rqstp;
 struct rpc_xprt *xprt = req->rq_xprt;
 int status, numreqs;

 dprintk("RPC: %5u xprt_transmit(%u)\n", task->tk_pid, req->rq_slen);

 if (!req->rq_reply_bytes_recvd) {
  if (list_empty(&req->rq_list) && rpc_reply_expected(task)) {



   spin_lock_bh(&xprt->transport_lock);

   memcpy(&req->rq_private_buf, &req->rq_rcv_buf,
     sizeof(req->rq_private_buf));

   list_add_tail(&req->rq_list, &xprt->recv);
   spin_unlock_bh(&xprt->transport_lock);
   xprt_reset_majortimeo(req);

   del_singleshot_timer_sync(&xprt->timer);
  }
 } else if (!req->rq_bytes_sent)
  return;

 req->rq_connect_cookie = xprt->connect_cookie;
 req->rq_xtime = ktime_get();
 status = xprt->ops->send_request(task);
 if (status != 0) {
  task->tk_status = status;
  return;
 }

 dprintk("RPC: %5u xmit complete\n", task->tk_pid);
 task->tk_flags |= RPC_TASK_SENT;
 spin_lock_bh(&xprt->transport_lock);

 xprt->ops->set_retrans_timeout(task);

 numreqs = atomic_read(&xprt->num_reqs);
 if (numreqs > xprt->stat.max_slots)
  xprt->stat.max_slots = numreqs;
 xprt->stat.sends++;
 xprt->stat.req_u += xprt->stat.sends - xprt->stat.recvs;
 xprt->stat.bklog_u += xprt->backlog.qlen;
 xprt->stat.sending_u += xprt->sending.qlen;
 xprt->stat.pending_u += xprt->pending.qlen;


 if (!xprt_connected(xprt))
  task->tk_status = -ENOTCONN;
 else if (!req->rq_reply_bytes_recvd && rpc_reply_expected(task)) {




  rpc_sleep_on(&xprt->pending, task, xprt_timer);
 }
 spin_unlock_bh(&xprt->transport_lock);
}
