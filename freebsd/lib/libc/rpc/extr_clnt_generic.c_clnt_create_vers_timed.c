
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xdrproc_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_3__ {unsigned int low; unsigned int high; } ;
struct rpc_err {TYPE_1__ re_vers; } ;
typedef scalar_t__ rpcvers_t ;
typedef int rpcprog_t ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
struct TYPE_4__ {int cf_stat; struct rpc_err cf_error; } ;
typedef int CLIENT ;


 int CLNT_CONTROL (int *,int ,char*) ;
 int CLSET_VERS ;
 int NULLPROC ;
 int RPC_PROGVERSMISMATCH ;
 int RPC_SUCCESS ;
 int clnt_call (int *,int ,int ,char*,int ,char*,struct timeval) ;
 int * clnt_create_timed (char const*,int ,scalar_t__,char const*,struct timeval const*) ;
 int clnt_destroy (int *) ;
 int clnt_geterr (int *,struct rpc_err*) ;
 TYPE_2__ rpc_createerr ;
 scalar_t__ xdr_void ;

CLIENT *
clnt_create_vers_timed(const char *hostname, rpcprog_t prog,
    rpcvers_t *vers_out, rpcvers_t vers_low, rpcvers_t vers_high,
    const char *nettype, const struct timeval *tp)
{
 CLIENT *clnt;
 struct timeval to;
 enum clnt_stat rpc_stat;
 struct rpc_err rpcerr;

 clnt = clnt_create_timed(hostname, prog, vers_high, nettype, tp);
 if (clnt == ((void*)0)) {
  return (((void*)0));
 }
 to.tv_sec = 10;
 to.tv_usec = 0;
 rpc_stat = clnt_call(clnt, NULLPROC, (xdrproc_t)xdr_void,
   (char *)((void*)0), (xdrproc_t)xdr_void, (char *)((void*)0), to);
 if (rpc_stat == RPC_SUCCESS) {
  *vers_out = vers_high;
  return (clnt);
 }
 while (rpc_stat == RPC_PROGVERSMISMATCH && vers_high > vers_low) {
  unsigned int minvers, maxvers;

  clnt_geterr(clnt, &rpcerr);
  minvers = rpcerr.re_vers.low;
  maxvers = rpcerr.re_vers.high;
  if (maxvers < vers_high)
   vers_high = maxvers;
  else
   vers_high--;
  if (minvers > vers_low)
   vers_low = minvers;
  if (vers_low > vers_high) {
   goto error;
  }
  CLNT_CONTROL(clnt, CLSET_VERS, (char *)&vers_high);
  rpc_stat = clnt_call(clnt, NULLPROC, (xdrproc_t)xdr_void,
    (char *)((void*)0), (xdrproc_t)xdr_void,
    (char *)((void*)0), to);
  if (rpc_stat == RPC_SUCCESS) {
   *vers_out = vers_high;
   return (clnt);
  }
 }
 clnt_geterr(clnt, &rpcerr);

error:
 rpc_createerr.cf_stat = rpc_stat;
 rpc_createerr.cf_error = rpcerr;
 clnt_destroy(clnt);
 return (((void*)0));
}
