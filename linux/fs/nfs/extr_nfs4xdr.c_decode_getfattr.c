
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs_server {int dummy; } ;
struct nfs_fattr {int dummy; } ;


 int decode_getfattr_generic (struct xdr_stream*,struct nfs_fattr*,int *,int *,int *,struct nfs_server const*) ;

__attribute__((used)) static int decode_getfattr(struct xdr_stream *xdr, struct nfs_fattr *fattr,
  const struct nfs_server *server)
{
 return decode_getfattr_generic(xdr, fattr, ((void*)0), ((void*)0), ((void*)0), server);
}
