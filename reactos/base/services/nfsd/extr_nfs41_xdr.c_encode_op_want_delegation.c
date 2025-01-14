
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int op; scalar_t__ arg; } ;
typedef TYPE_2__ nfs_argop4 ;
struct TYPE_7__ {scalar_t__ want; TYPE_1__* claim; } ;
typedef TYPE_3__ nfs41_want_delegation_args ;
typedef int bool_t ;
typedef int XDR ;
struct TYPE_5__ {scalar_t__ claim; scalar_t__ prev_delegate_type; } ;


 scalar_t__ CLAIM_PREVIOUS ;
 int FALSE ;
 int OP_WANT_DELEGATION ;
 scalar_t__ unexpected_op (int ,int ) ;
 scalar_t__ xdr_u_int32_t (int *,scalar_t__*) ;

__attribute__((used)) static bool_t encode_op_want_delegation(
    XDR *xdr,
    nfs_argop4 *argop)
{
    nfs41_want_delegation_args *args = (nfs41_want_delegation_args*)argop->arg;

    if (unexpected_op(argop->op, OP_WANT_DELEGATION))
        return FALSE;

    if (!xdr_u_int32_t(xdr, &args->want))
        return FALSE;

    if (!xdr_u_int32_t(xdr, &args->claim->claim))
        return FALSE;

    return args->claim->claim != CLAIM_PREVIOUS ||
        xdr_u_int32_t(xdr, &args->claim->prev_delegate_type);
}
