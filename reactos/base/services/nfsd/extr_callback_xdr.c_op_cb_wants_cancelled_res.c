
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cb_wants_cancelled_res {int status; } ;
typedef int bool_t ;
typedef int XDR ;


 int CBX_ERR (char*) ;
 int xdr_enum (int *,int *) ;

__attribute__((used)) static bool_t op_cb_wants_cancelled_res(XDR *xdr, struct cb_wants_cancelled_res *res)
{
    bool_t result;

    result = xdr_enum(xdr, &res->status);
    if (!result) { CBX_ERR("wants_cancelled.status"); goto out; }
out:
    return result;
}
