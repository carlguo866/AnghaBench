
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ other; int seqid; } ;
typedef TYPE_1__ stateid4 ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int NFS4_STATEID_OTHER ;
 int xdr_opaque (int *,char*,int ) ;
 int xdr_u_int32_t (int *,int *) ;

__attribute__((used)) static bool_t xdr_stateid4(
    XDR *xdr,
    stateid4 *si)
{
    if (!xdr_u_int32_t(xdr, &si->seqid))
        return FALSE;

    return xdr_opaque(xdr, (char *)si->other, NFS4_STATEID_OTHER);
}
