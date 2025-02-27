
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct svc_callout {void (* sc_dispatch ) (struct svc_req*,TYPE_2__*) ;char* sc_netid; int sc_vers; int sc_prog; } ;
struct netconfig {char* nc_netid; } ;
struct netbuf {int len; TYPE_1__* buf; } ;
typedef int rpcvers_t ;
typedef int rpcprog_t ;
typedef int bool_t ;
struct TYPE_10__ {int sp_lock; int sp_callouts; } ;
struct TYPE_8__ {int ss_len; } ;
struct TYPE_9__ {char* xp_netid; TYPE_1__ xp_ltaddr; TYPE_4__* xp_pool; } ;
typedef TYPE_2__ SVCXPRT ;
typedef TYPE_4__ SVCPOOL ;


 int FALSE ;
 int M_NOWAIT ;
 int M_RPC ;
 int TAILQ_INSERT_TAIL (int *,struct svc_callout*,int ) ;
 int TRUE ;
 int free (char*,int ) ;
 struct svc_callout* malloc (int,int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int rpcb_set (int const,int const,struct netconfig*,struct netbuf*) ;
 int sc_link ;
 void* strdup (char*,int ) ;
 struct svc_callout* svc_find (TYPE_4__*,int const,int const,char*) ;

bool_t
svc_reg(SVCXPRT *xprt, const rpcprog_t prog, const rpcvers_t vers,
    void (*dispatch)(struct svc_req *, SVCXPRT *),
    const struct netconfig *nconf)
{
 SVCPOOL *pool = xprt->xp_pool;
 struct svc_callout *s;
 char *netid = ((void*)0);
 int flag = 0;



 if (xprt->xp_netid) {
  netid = strdup(xprt->xp_netid, M_RPC);
  flag = 1;
 } else if (nconf && nconf->nc_netid) {
  netid = strdup(nconf->nc_netid, M_RPC);
  flag = 1;
 }
 if ((netid == ((void*)0)) && (flag == 1)) {
  return (FALSE);
 }

 mtx_lock(&pool->sp_lock);
 if ((s = svc_find(pool, prog, vers, netid)) != ((void*)0)) {
  if (netid)
   free(netid, M_RPC);
  if (s->sc_dispatch == dispatch)
   goto rpcb_it;
  mtx_unlock(&pool->sp_lock);
  return (FALSE);
 }
 s = malloc(sizeof (struct svc_callout), M_RPC, M_NOWAIT);
 if (s == ((void*)0)) {
  if (netid)
   free(netid, M_RPC);
  mtx_unlock(&pool->sp_lock);
  return (FALSE);
 }

 s->sc_prog = prog;
 s->sc_vers = vers;
 s->sc_dispatch = dispatch;
 s->sc_netid = netid;
 TAILQ_INSERT_TAIL(&pool->sp_callouts, s, sc_link);

 if ((xprt->xp_netid == ((void*)0)) && (flag == 1) && netid)
  ((SVCXPRT *) xprt)->xp_netid = strdup(netid, M_RPC);

rpcb_it:
 mtx_unlock(&pool->sp_lock);

 if (nconf) {
  bool_t dummy;
  struct netconfig tnc;
  struct netbuf nb;
  tnc = *nconf;
  nb.buf = &xprt->xp_ltaddr;
  nb.len = xprt->xp_ltaddr.ss_len;
  dummy = rpcb_set(prog, vers, &tnc, &nb);
  return (dummy);
 }
 return (TRUE);
}
