
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
typedef int __be32 ;


 int NLMPROC_UNLOCK_RES ;
 int __nlm4svc_proc_unlock ;
 int dprintk (char*) ;
 int nlm4svc_callback (struct svc_rqst*,int ,int ) ;

__attribute__((used)) static __be32 nlm4svc_proc_unlock_msg(struct svc_rqst *rqstp)
{
 dprintk("lockd: UNLOCK_MSG    called\n");
 return nlm4svc_callback(rqstp, NLMPROC_UNLOCK_RES, __nlm4svc_proc_unlock);
}
