
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nfs42_falloc_args {int falloc_bitmask; int falloc_fh; int seq_args; } ;
struct compound_hdr {int minorversion; } ;


 int encode_compound_hdr (struct xdr_stream*,struct rpc_rqst*,struct compound_hdr*) ;
 int encode_deallocate (struct xdr_stream*,struct nfs42_falloc_args const*,struct compound_hdr*) ;
 int encode_getfattr (struct xdr_stream*,int ,struct compound_hdr*) ;
 int encode_nops (struct compound_hdr*) ;
 int encode_putfh (struct xdr_stream*,int ,struct compound_hdr*) ;
 int encode_sequence (struct xdr_stream*,int *,struct compound_hdr*) ;
 int nfs4_xdr_minorversion (int *) ;

__attribute__((used)) static void nfs4_xdr_enc_deallocate(struct rpc_rqst *req,
        struct xdr_stream *xdr,
        const void *data)
{
 const struct nfs42_falloc_args *args = data;
 struct compound_hdr hdr = {
  .minorversion = nfs4_xdr_minorversion(&args->seq_args),
 };

 encode_compound_hdr(xdr, req, &hdr);
 encode_sequence(xdr, &args->seq_args, &hdr);
 encode_putfh(xdr, args->falloc_fh, &hdr);
 encode_deallocate(xdr, args, &hdr);
 encode_getfattr(xdr, args->falloc_bitmask, &hdr);
 encode_nops(&hdr);
}
