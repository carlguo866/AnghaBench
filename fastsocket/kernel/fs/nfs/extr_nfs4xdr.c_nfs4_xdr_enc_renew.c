
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int rq_snd_buf; } ;
struct nfs_client {int dummy; } ;
struct compound_hdr {int nops; } ;
typedef int __be32 ;


 int encode_compound_hdr (struct xdr_stream*,struct rpc_rqst*,struct compound_hdr*) ;
 int encode_nops (struct compound_hdr*) ;
 int encode_renew (struct xdr_stream*,struct nfs_client*,struct compound_hdr*) ;
 int xdr_init_encode (struct xdr_stream*,int *,int *) ;

__attribute__((used)) static int nfs4_xdr_enc_renew(struct rpc_rqst *req, __be32 *p, struct nfs_client *clp)
{
 struct xdr_stream xdr;
 struct compound_hdr hdr = {
  .nops = 0,
 };

 xdr_init_encode(&xdr, &req->rq_snd_buf, p);
 encode_compound_hdr(&xdr, req, &hdr);
 encode_renew(&xdr, clp, &hdr);
 encode_nops(&hdr);
 return 0;
}
