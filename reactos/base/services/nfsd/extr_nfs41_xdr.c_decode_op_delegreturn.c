
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int op; scalar_t__ res; } ;
typedef TYPE_1__ nfs_resop4 ;
struct TYPE_5__ {int status; } ;
typedef TYPE_2__ nfs41_delegreturn_res ;
typedef int bool_t ;
typedef int XDR ;


 int FALSE ;
 int OP_DELEGRETURN ;
 scalar_t__ unexpected_op (int ,int ) ;
 int xdr_u_int32_t (int *,int *) ;

__attribute__((used)) static bool_t decode_op_delegreturn(
    XDR *xdr,
    nfs_resop4 *resop)
{
    nfs41_delegreturn_res *res = (nfs41_delegreturn_res*)resop->res;

    if (unexpected_op(resop->op, OP_DELEGRETURN))
        return FALSE;

    return xdr_u_int32_t(xdr, &res->status);
}
