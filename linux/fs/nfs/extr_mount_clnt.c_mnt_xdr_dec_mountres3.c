
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct mountres {int errno; } ;


 int EBADHANDLE ;
 int decode_auth_flavors (struct xdr_stream*,struct mountres*) ;
 int decode_fhandle3 (struct xdr_stream*,struct mountres*) ;
 int decode_fhs_status (struct xdr_stream*,struct mountres*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int mnt_xdr_dec_mountres3(struct rpc_rqst *req,
     struct xdr_stream *xdr,
     void *data)
{
 struct mountres *res = data;
 int status;

 status = decode_fhs_status(xdr, res);
 if (unlikely(status != 0 || res->errno != 0))
  return status;
 status = decode_fhandle3(xdr, res);
 if (unlikely(status != 0)) {
  res->errno = -EBADHANDLE;
  return 0;
 }
 return decode_auth_flavors(xdr, res);
}
