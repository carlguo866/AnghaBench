
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct svc_req {int rq_xid; TYPE_4__* rq_xprt; } ;
struct TYPE_6__ {int rj_why; int rj_stat; } ;
struct TYPE_5__ {int rp_stat; } ;
struct rpc_msg {TYPE_2__ rjcted_rply; TYPE_1__ rm_reply; int rm_direction; int rm_xid; } ;
typedef enum auth_stat { ____Placeholder_auth_stat } auth_stat ;
struct TYPE_8__ {TYPE_3__* xp_pool; } ;
struct TYPE_7__ {scalar_t__ sp_rcache; } ;
typedef TYPE_4__ SVCXPRT ;


 int AUTH_ERROR ;
 int MSG_DENIED ;
 int REPLY ;
 int replay_setreply (scalar_t__,struct rpc_msg*,int ,int *) ;
 int svc_getrpccaller (struct svc_req*) ;
 int svc_sendreply_common (struct svc_req*,struct rpc_msg*,int *) ;

void
svcerr_auth(struct svc_req *rqstp, enum auth_stat why)
{
 SVCXPRT *xprt = rqstp->rq_xprt;
 struct rpc_msg rply;

 rply.rm_xid = rqstp->rq_xid;
 rply.rm_direction = REPLY;
 rply.rm_reply.rp_stat = MSG_DENIED;
 rply.rjcted_rply.rj_stat = AUTH_ERROR;
 rply.rjcted_rply.rj_why = why;

 if (xprt->xp_pool->sp_rcache)
  replay_setreply(xprt->xp_pool->sp_rcache,
      &rply, svc_getrpccaller(rqstp), ((void*)0));

 svc_sendreply_common(rqstp, &rply, ((void*)0));
}
