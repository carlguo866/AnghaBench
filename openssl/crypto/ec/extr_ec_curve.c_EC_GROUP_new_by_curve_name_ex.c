
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nid; } ;
typedef int OPENSSL_CTX ;
typedef int EC_GROUP ;


 int EC_F_EC_GROUP_NEW_BY_CURVE_NAME_EX ;
 int EC_R_UNKNOWN_GROUP ;
 int * EC_curve_nid2nist (int) ;
 int ECerr (int ,int ) ;
 TYPE_1__* curve_list ;
 size_t curve_list_length ;
 int * ec_group_new_from_data (int *,TYPE_1__) ;

EC_GROUP *EC_GROUP_new_by_curve_name_ex(OPENSSL_CTX *libctx, int nid)
{
    size_t i;
    EC_GROUP *ret = ((void*)0);

    if (nid <= 0)
        return ((void*)0);
    for (i = 0; i < curve_list_length; i++)
        if (curve_list[i].nid == nid) {
            ret = ec_group_new_from_data(libctx, curve_list[i]);
            break;
        }

    if (ret == ((void*)0)) {
        ECerr(EC_F_EC_GROUP_NEW_BY_CURVE_NAME_EX, EC_R_UNKNOWN_GROUP);
        return ((void*)0);
    }

    return ret;
}
