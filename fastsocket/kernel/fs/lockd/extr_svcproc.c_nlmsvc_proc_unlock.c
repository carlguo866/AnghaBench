
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct nlm_res {int status; int cookie; } ;
struct nlm_host {int dummy; } ;
struct nlm_file {int dummy; } ;
struct nlm_args {int lock; int cookie; } ;
typedef int __be32 ;


 int cast_status (int ) ;
 int dprintk (char*,...) ;
 scalar_t__ locks_in_grace () ;
 int nlm_drop_reply ;
 int nlm_lck_denied_grace_period ;
 int nlm_release_file (struct nlm_file*) ;
 int nlm_release_host (struct nlm_host*) ;
 int nlmsvc_retrieve_args (struct svc_rqst*,struct nlm_args*,struct nlm_host**,struct nlm_file**) ;
 int nlmsvc_unlock (struct nlm_file*,int *) ;
 int ntohl (int ) ;
 int rpc_drop_reply ;
 int rpc_success ;

__attribute__((used)) static __be32
nlmsvc_proc_unlock(struct svc_rqst *rqstp, struct nlm_args *argp,
               struct nlm_res *resp)
{
 struct nlm_host *host;
 struct nlm_file *file;

 dprintk("lockd: UNLOCK        called\n");

 resp->cookie = argp->cookie;


 if (locks_in_grace()) {
  resp->status = nlm_lck_denied_grace_period;
  return rpc_success;
 }


 if ((resp->status = nlmsvc_retrieve_args(rqstp, argp, &host, &file)))
  return resp->status == nlm_drop_reply ? rpc_drop_reply :rpc_success;


 resp->status = cast_status(nlmsvc_unlock(file, &argp->lock));

 dprintk("lockd: UNLOCK        status %d\n", ntohl(resp->status));
 nlm_release_host(host);
 nlm_release_file(file);
 return rpc_success;
}
