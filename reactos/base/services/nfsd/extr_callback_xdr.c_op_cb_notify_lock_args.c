
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cb_notify_lock_args {int target_highest_slotid; } ;
typedef int bool_t ;
typedef int XDR ;


 int CBX_ERR (char*) ;
 int xdr_u_int32_t (int *,int *) ;

__attribute__((used)) static bool_t op_cb_notify_lock_args(XDR *xdr, struct cb_notify_lock_args *res)
{
    bool_t result;

    result = xdr_u_int32_t(xdr, &res->target_highest_slotid);
    if (!result) { CBX_ERR("notify_lock.target_highest_slotid"); goto out; }
out:
    return result;
}
