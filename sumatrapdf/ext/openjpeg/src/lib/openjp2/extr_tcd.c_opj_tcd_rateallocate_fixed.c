
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* tcp; } ;
typedef TYPE_2__ opj_tcd_t ;
struct TYPE_5__ {scalar_t__ numlayers; } ;
typedef scalar_t__ OPJ_UINT32 ;


 int opj_tcd_makelayer_fixed (TYPE_2__*,scalar_t__,int) ;

void opj_tcd_rateallocate_fixed(opj_tcd_t *tcd)
{
    OPJ_UINT32 layno;

    for (layno = 0; layno < tcd->tcp->numlayers; layno++) {
        opj_tcd_makelayer_fixed(tcd, layno, 1);
    }
}
