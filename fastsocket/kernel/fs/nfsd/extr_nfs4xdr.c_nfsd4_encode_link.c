
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_link {int li_cinfo; } ;
struct nfsd4_compoundres {int dummy; } ;
typedef int __be32 ;


 int ADJUST_ARGS () ;
 int RESERVE_SPACE (int) ;
 int write_cinfo (int **,int *) ;

__attribute__((used)) static __be32
nfsd4_encode_link(struct nfsd4_compoundres *resp, __be32 nfserr, struct nfsd4_link *link)
{
 __be32 *p;

 if (!nfserr) {
  RESERVE_SPACE(20);
  write_cinfo(&p, &link->li_cinfo);
  ADJUST_ARGS();
 }
 return nfserr;
}
