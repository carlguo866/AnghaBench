
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nfs4_accessargs {scalar_t__ bitmask; int access; int fh; int seq_args; } ;
struct compound_hdr {int minorversion; } ;


 int encode_access (struct xdr_stream*,int ,struct compound_hdr*) ;
 int encode_compound_hdr (struct xdr_stream*,struct rpc_rqst*,struct compound_hdr*) ;
 int encode_getfattr (struct xdr_stream*,scalar_t__,struct compound_hdr*) ;
 int encode_nops (struct compound_hdr*) ;
 int encode_putfh (struct xdr_stream*,int ,struct compound_hdr*) ;
 int encode_sequence (struct xdr_stream*,int *,struct compound_hdr*) ;
 int nfs4_xdr_minorversion (int *) ;

__attribute__((used)) static void nfs4_xdr_enc_access(struct rpc_rqst *req, struct xdr_stream *xdr,
    const void *data)
{
 const struct nfs4_accessargs *args = data;
 struct compound_hdr hdr = {
  .minorversion = nfs4_xdr_minorversion(&args->seq_args),
 };

 encode_compound_hdr(xdr, req, &hdr);
 encode_sequence(xdr, &args->seq_args, &hdr);
 encode_putfh(xdr, args->fh, &hdr);
 encode_access(xdr, args->access, &hdr);
 if (args->bitmask)
  encode_getfattr(xdr, args->bitmask, &hdr);
 encode_nops(&hdr);
}
