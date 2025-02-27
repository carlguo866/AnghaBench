
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_rqst {int dummy; } ;
struct nfs_fattr {int dummy; } ;
typedef int __be32 ;


 int nfs_stat_to_errno (int) ;
 int ntohl (int ) ;
 int xdr_decode_fattr (int *,struct nfs_fattr*) ;

__attribute__((used)) static int
nfs_xdr_attrstat(struct rpc_rqst *req, __be32 *p, struct nfs_fattr *fattr)
{
 int status;

 if ((status = ntohl(*p++)))
  return nfs_stat_to_errno(status);
 xdr_decode_fattr(p, fattr);
 return 0;
}
