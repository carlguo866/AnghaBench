
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pzPROGNAME; } ;
typedef TYPE_1__ tOptions ;
struct TYPE_7__ {int pz_NAME; scalar_t__ optCookie; } ;
typedef TYPE_2__ tOptDesc ;
struct TYPE_8__ {char** apzArgs; int useCt; } ;
typedef TYPE_3__ tArgList ;


 char* ARG_BY_NUM_FMT ;
 char* EXPORT_ARG_FMT ;
 int print_quot_str (int ) ;
 int printf (char*,int ,int ,int) ;
 char* zOptCookieCt ;

__attribute__((used)) static void
print_stacked_arg(tOptions * pOpts, tOptDesc * pOD)
{
    tArgList * pAL = (tArgList *)pOD->optCookie;
    char const ** ppz = pAL->apzArgs;
    int ct = pAL->useCt;

    printf(zOptCookieCt, pOpts->pzPROGNAME, pOD->pz_NAME, ct);

    while (--ct >= 0) {
        printf(ARG_BY_NUM_FMT, pOpts->pzPROGNAME, pOD->pz_NAME,
               pAL->useCt - ct);
        print_quot_str(*(ppz++));
        printf(EXPORT_ARG_FMT, pOpts->pzPROGNAME, pOD->pz_NAME,
               pAL->useCt - ct);
    }
}
