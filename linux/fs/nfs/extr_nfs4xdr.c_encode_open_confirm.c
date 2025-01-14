
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs_open_confirmargs {int seqid; int stateid; } ;
struct compound_hdr {int dummy; } ;


 int OP_OPEN_CONFIRM ;
 int decode_open_confirm_maxsz ;
 int encode_nfs4_seqid (struct xdr_stream*,int ) ;
 int encode_nfs4_stateid (struct xdr_stream*,int ) ;
 int encode_op_hdr (struct xdr_stream*,int ,int ,struct compound_hdr*) ;

__attribute__((used)) static void encode_open_confirm(struct xdr_stream *xdr, const struct nfs_open_confirmargs *arg, struct compound_hdr *hdr)
{
 encode_op_hdr(xdr, OP_OPEN_CONFIRM, decode_open_confirm_maxsz, hdr);
 encode_nfs4_stateid(xdr, arg->stateid);
 encode_nfs4_seqid(xdr, arg->seqid);
}
