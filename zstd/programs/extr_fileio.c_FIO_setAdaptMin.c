
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int minAdaptLevel; } ;
typedef TYPE_1__ FIO_prefs_t ;


 int ZSTD_minCLevel () ;
 int assert (int) ;

void FIO_setAdaptMin(FIO_prefs_t* const prefs, int minCLevel)
{

    assert(minCLevel >= ZSTD_minCLevel());

    prefs->minAdaptLevel = minCLevel;
}
