
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_6__ {TYPE_2__* p_FmPcdKg; } ;
typedef TYPE_3__ t_FmPcd ;
typedef int e_FmPcdEngine ;
struct TYPE_5__ {TYPE_1__* schemes; } ;
struct TYPE_4__ {int nextEngine; int valid; } ;


 int ASSERT_COND (int ) ;

e_FmPcdEngine FmPcdKgGetNextEngine(t_Handle h_FmPcd, uint8_t relativeSchemeId)
{
    t_FmPcd *p_FmPcd = (t_FmPcd*)h_FmPcd;

    ASSERT_COND(p_FmPcd->p_FmPcdKg->schemes[relativeSchemeId].valid);

    return p_FmPcd->p_FmPcdKg->schemes[relativeSchemeId].nextEngine;
}
