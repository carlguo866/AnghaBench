
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
struct timeval {int dummy; } ;
struct rpc_callextra {int dummy; } ;
typedef int nlm4_res ;
typedef int nlm4_lockargs ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef int caddr_t ;
typedef int CLIENT ;


 int CLNT_CALL_EXT (int *,struct rpc_callextra*,int ,int ,int ,int ,int ,struct timeval) ;
 int NLM4_LOCK ;
 scalar_t__ xdr_nlm4_lockargs ;
 scalar_t__ xdr_nlm4_res ;

enum clnt_stat
nlm4_lock_4(nlm4_lockargs *argp, nlm4_res *clnt_res, CLIENT *clnt, struct rpc_callextra *ext, struct timeval timo)
{
 return (CLNT_CALL_EXT(clnt, ext, NLM4_LOCK,
  (xdrproc_t) xdr_nlm4_lockargs, (caddr_t) argp,
  (xdrproc_t) xdr_nlm4_res, (caddr_t) clnt_res,
  timo));
}
