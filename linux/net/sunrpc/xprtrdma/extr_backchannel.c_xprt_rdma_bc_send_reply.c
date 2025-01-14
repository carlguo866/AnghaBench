
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcrdma_xprt {int rx_ep; int rx_ia; } ;
struct rpcrdma_req {int dummy; } ;
struct rpc_xprt {int dummy; } ;
struct rpc_rqst {struct rpc_xprt* rq_xprt; } ;


 int EBADSLT ;
 int ENOTCONN ;
 struct rpcrdma_req* rpcr_to_rdmar (struct rpc_rqst*) ;
 int rpcrdma_bc_marshal_reply (struct rpc_rqst*) ;
 scalar_t__ rpcrdma_ep_post (int *,int *,struct rpcrdma_req*) ;
 struct rpcrdma_xprt* rpcx_to_rdmax (struct rpc_xprt*) ;
 int xprt_connected (struct rpc_xprt*) ;
 int xprt_rdma_close (struct rpc_xprt*) ;
 int xprt_request_get_cong (struct rpc_xprt*,struct rpc_rqst*) ;

int xprt_rdma_bc_send_reply(struct rpc_rqst *rqst)
{
 struct rpc_xprt *xprt = rqst->rq_xprt;
 struct rpcrdma_xprt *r_xprt = rpcx_to_rdmax(xprt);
 struct rpcrdma_req *req = rpcr_to_rdmar(rqst);
 int rc;

 if (!xprt_connected(xprt))
  return -ENOTCONN;

 if (!xprt_request_get_cong(xprt, rqst))
  return -EBADSLT;

 rc = rpcrdma_bc_marshal_reply(rqst);
 if (rc < 0)
  goto failed_marshal;

 if (rpcrdma_ep_post(&r_xprt->rx_ia, &r_xprt->rx_ep, req))
  goto drop_connection;
 return 0;

failed_marshal:
 if (rc != -ENOTCONN)
  return rc;
drop_connection:
 xprt_rdma_close(xprt);
 return -ENOTCONN;
}
