
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct TYPE_4__ {int type; } ;
typedef TYPE_1__ nfs4_stateid ;
typedef int __be32 ;


 int NFS4_DELEGATION_STATEID_TYPE ;
 int decode_stateid (struct xdr_stream*,TYPE_1__*) ;

__attribute__((used)) static __be32 decode_delegation_stateid(struct xdr_stream *xdr, nfs4_stateid *stateid)
{
 stateid->type = NFS4_DELEGATION_STATEID_TYPE;
 return decode_stateid(xdr, stateid);
}
