
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* meth; } ;
struct TYPE_8__ {int (* point_set_compressed_coordinates ) (TYPE_2__ const*,int *,int const*,int,int *) ;int flags; scalar_t__ field_type; } ;
typedef int EC_POINT ;
typedef TYPE_2__ EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int EC_FLAGS_DEFAULT_OCT ;
 int EC_F_EC_POINT_SET_COMPRESSED_COORDINATES ;
 int EC_R_GF2M_NOT_SUPPORTED ;
 int EC_R_INCOMPATIBLE_OBJECTS ;
 int ECerr (int ,int ) ;
 int ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED ;
 scalar_t__ NID_X9_62_prime_field ;
 int ec_GF2m_simple_set_compressed_coordinates (TYPE_2__ const*,int *,int const*,int,int *) ;
 int ec_GFp_simple_set_compressed_coordinates (TYPE_2__ const*,int *,int const*,int,int *) ;
 int ec_point_is_compat (int *,TYPE_2__ const*) ;
 int stub1 (TYPE_2__ const*,int *,int const*,int,int *) ;

int EC_POINT_set_compressed_coordinates(const EC_GROUP *group, EC_POINT *point,
                                        const BIGNUM *x, int y_bit, BN_CTX *ctx)
{
    if (group->meth->point_set_compressed_coordinates == ((void*)0)
        && !(group->meth->flags & EC_FLAGS_DEFAULT_OCT)) {
        ECerr(EC_F_EC_POINT_SET_COMPRESSED_COORDINATES,
              ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED);
        return 0;
    }
    if (!ec_point_is_compat(point, group)) {
        ECerr(EC_F_EC_POINT_SET_COMPRESSED_COORDINATES,
              EC_R_INCOMPATIBLE_OBJECTS);
        return 0;
    }
    if (group->meth->flags & EC_FLAGS_DEFAULT_OCT) {
        if (group->meth->field_type == NID_X9_62_prime_field)
            return ec_GFp_simple_set_compressed_coordinates(group, point, x,
                                                            y_bit, ctx);
        else







            return ec_GF2m_simple_set_compressed_coordinates(group, point, x,
                                                             y_bit, ctx);

    }
    return group->meth->point_set_compressed_coordinates(group, point, x,
                                                         y_bit, ctx);
}
