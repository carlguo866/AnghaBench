
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs4_change_info {int dummy; } ;


 int OP_REMOVE ;
 int decode_change_info (struct xdr_stream*,struct nfs4_change_info*) ;
 int decode_op_hdr (struct xdr_stream*,int ) ;

__attribute__((used)) static int decode_remove(struct xdr_stream *xdr, struct nfs4_change_info *cinfo)
{
 int status;

 status = decode_op_hdr(xdr, OP_REMOVE);
 if (status)
  goto out;
 status = decode_change_info(xdr, cinfo);
out:
 return status;
}
