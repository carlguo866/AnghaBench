
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct compound_hdr {int replen; int nops; } ;
typedef int __be32 ;


 int OP_RESTOREFH ;
 int cpu_to_be32 (int ) ;
 scalar_t__ decode_restorefh_maxsz ;
 int * reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static void
encode_restorefh(struct xdr_stream *xdr, struct compound_hdr *hdr)
{
 __be32 *p;

 p = reserve_space(xdr, 4);
 *p = cpu_to_be32(OP_RESTOREFH);
 hdr->nops++;
 hdr->replen += decode_restorefh_maxsz;
}
