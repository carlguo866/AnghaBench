
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {struct nlm_res* rq_resp; } ;
struct nlm_res {int status; int cookie; } ;
typedef int __be32 ;


 int * nlm4_encode_cookie (int *,int *) ;
 int xdr_ressize_check (struct svc_rqst*,int *) ;
 int xdr_zero ;

int
nlm4svc_encode_shareres(struct svc_rqst *rqstp, __be32 *p)
{
 struct nlm_res *resp = rqstp->rq_resp;

 if (!(p = nlm4_encode_cookie(p, &resp->cookie)))
  return 0;
 *p++ = resp->status;
 *p++ = xdr_zero;
 return xdr_ressize_check(rqstp, p);
}
