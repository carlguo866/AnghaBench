
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ DH ;


 int DH_FLAG_CACHE_MONT_P ;

__attribute__((used)) static int dh_init(DH *dh)
{
    dh->flags |= DH_FLAG_CACHE_MONT_P;
    return 1;
}
