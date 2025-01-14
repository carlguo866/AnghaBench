
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_task {TYPE_1__* tk_rqstp; } ;
struct rpc_cred {int cr_flags; } ;
struct TYPE_2__ {struct rpc_cred* rq_cred; } ;


 int EKEYEXPIRED ;
 int RPCAUTH_CRED_NEW ;
 int RPCAUTH_CRED_UPTODATE ;
 scalar_t__ gss_cred_is_negative_entry (struct rpc_cred*) ;
 int gss_refresh_upcall (struct rpc_task*) ;
 int gss_renew_cred (struct rpc_task*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int
gss_refresh(struct rpc_task *task)
{
 struct rpc_cred *cred = task->tk_rqstp->rq_cred;
 int ret = 0;

 if (gss_cred_is_negative_entry(cred))
  return -EKEYEXPIRED;

 if (!test_bit(RPCAUTH_CRED_NEW, &cred->cr_flags) &&
   !test_bit(RPCAUTH_CRED_UPTODATE, &cred->cr_flags)) {
  ret = gss_renew_cred(task);
  if (ret < 0)
   goto out;
  cred = task->tk_rqstp->rq_cred;
 }

 if (test_bit(RPCAUTH_CRED_NEW, &cred->cr_flags))
  ret = gss_refresh_upcall(task);
out:
 return ret;
}
