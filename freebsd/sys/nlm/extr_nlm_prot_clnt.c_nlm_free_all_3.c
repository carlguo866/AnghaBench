
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdrproc_t ;
struct timeval {int dummy; } ;
struct rpc_callextra {int dummy; } ;
typedef int nlm_notify ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef int caddr_t ;
typedef int CLIENT ;


 int CLNT_CALL_EXT (int *,struct rpc_callextra*,int ,int ,int ,int ,int ,struct timeval) ;
 int NLM_FREE_ALL ;
 scalar_t__ xdr_nlm_notify ;
 scalar_t__ xdr_void ;

enum clnt_stat
nlm_free_all_3(nlm_notify *argp, void *clnt_res, CLIENT *clnt, struct rpc_callextra *ext, struct timeval timo)
{
 return (CLNT_CALL_EXT(clnt, ext, NLM_FREE_ALL,
  (xdrproc_t) xdr_nlm_notify, (caddr_t) argp,
  (xdrproc_t) xdr_void, (caddr_t) clnt_res,
  timo));
}
