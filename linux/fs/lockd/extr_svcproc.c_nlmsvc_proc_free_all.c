
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {struct nlm_args* rq_argp; } ;
struct nlm_host {int dummy; } ;
struct nlm_args {int dummy; } ;
typedef int __be32 ;


 int nlmsvc_free_host_resources (struct nlm_host*) ;
 int nlmsvc_release_host (struct nlm_host*) ;
 scalar_t__ nlmsvc_retrieve_args (struct svc_rqst*,struct nlm_args*,struct nlm_host**,int *) ;
 int rpc_success ;

__attribute__((used)) static __be32
nlmsvc_proc_free_all(struct svc_rqst *rqstp)
{
 struct nlm_args *argp = rqstp->rq_argp;
 struct nlm_host *host;


 if (nlmsvc_retrieve_args(rqstp, argp, &host, ((void*)0)))
  return rpc_success;

 nlmsvc_free_host_resources(host);
 nlmsvc_release_host(host);
 return rpc_success;
}
