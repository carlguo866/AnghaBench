
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {struct nfsd3_commitargs* rq_argp; } ;
struct nfsd3_commitargs {int count; int offset; int fh; } ;
typedef int __be32 ;


 int * decode_fh (int *,int *) ;
 int ntohl (int ) ;
 int xdr_argsize_check (struct svc_rqst*,int *) ;
 int * xdr_decode_hyper (int *,int *) ;

int
nfs3svc_decode_commitargs(struct svc_rqst *rqstp, __be32 *p)
{
 struct nfsd3_commitargs *args = rqstp->rq_argp;
 p = decode_fh(p, &args->fh);
 if (!p)
  return 0;
 p = xdr_decode_hyper(p, &args->offset);
 args->count = ntohl(*p++);

 return xdr_argsize_check(rqstp, p);
}
