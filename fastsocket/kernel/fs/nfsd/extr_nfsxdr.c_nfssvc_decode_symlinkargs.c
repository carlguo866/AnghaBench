
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct nfsd_symlinkargs {int attrs; int tlen; int tname; int flen; int fname; int ffh; } ;
typedef int __be32 ;


 int * decode_fh (int *,int *) ;
 int * decode_filename (int *,int *,int *) ;
 int * decode_pathname (int *,int *,int *) ;
 int * decode_sattr (int *,int *) ;
 int xdr_argsize_check (struct svc_rqst*,int *) ;

int
nfssvc_decode_symlinkargs(struct svc_rqst *rqstp, __be32 *p,
     struct nfsd_symlinkargs *args)
{
 if ( !(p = decode_fh(p, &args->ffh))
     || !(p = decode_filename(p, &args->fname, &args->flen))
     || !(p = decode_pathname(p, &args->tname, &args->tlen)))
  return 0;
 p = decode_sattr(p, &args->attrs);

 return xdr_argsize_check(rqstp, p);
}
