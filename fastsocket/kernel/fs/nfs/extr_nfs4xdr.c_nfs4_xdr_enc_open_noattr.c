
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int rq_snd_buf; } ;
struct nfs_openargs {int bitmask; int access; int fh; int seq_args; } ;
struct compound_hdr {int minorversion; } ;
typedef int __be32 ;


 int encode_access (struct xdr_stream*,int ,struct compound_hdr*) ;
 int encode_compound_hdr (struct xdr_stream*,struct rpc_rqst*,struct compound_hdr*) ;
 int encode_getfattr (struct xdr_stream*,int ,struct compound_hdr*) ;
 int encode_nops (struct compound_hdr*) ;
 int encode_open (struct xdr_stream*,struct nfs_openargs*,struct compound_hdr*) ;
 int encode_putfh (struct xdr_stream*,int ,struct compound_hdr*) ;
 int encode_sequence (struct xdr_stream*,int *,struct compound_hdr*) ;
 int nfs4_xdr_minorversion (int *) ;
 int xdr_init_encode (struct xdr_stream*,int *,int *) ;

__attribute__((used)) static int nfs4_xdr_enc_open_noattr(struct rpc_rqst *req, __be32 *p, struct nfs_openargs *args)
{
 struct xdr_stream xdr;
 struct compound_hdr hdr = {
  .minorversion = nfs4_xdr_minorversion(&args->seq_args),
 };

 xdr_init_encode(&xdr, &req->rq_snd_buf, p);
 encode_compound_hdr(&xdr, req, &hdr);
 encode_sequence(&xdr, &args->seq_args, &hdr);
 encode_putfh(&xdr, args->fh, &hdr);
 encode_open(&xdr, args, &hdr);
 if (args->access)
  encode_access(&xdr, args->access, &hdr);
 encode_getfattr(&xdr, args->bitmask, &hdr);
 encode_nops(&hdr);
 return 0;
}
