
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {scalar_t__ num_reqs; scalar_t__ min_reqs; } ;
struct rpc_rqst {int dummy; } ;


 int kfree (struct rpc_rqst*) ;

__attribute__((used)) static bool xprt_dynamic_free_slot(struct rpc_xprt *xprt, struct rpc_rqst *req)
{
 if (xprt->num_reqs > xprt->min_reqs) {
  --xprt->num_reqs;
  kfree(req);
  return 1;
 }
 return 0;
}
