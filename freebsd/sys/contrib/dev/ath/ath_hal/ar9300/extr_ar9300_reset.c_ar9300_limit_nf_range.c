
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
typedef scalar_t__ int16_t ;
struct TYPE_4__ {TYPE_1__* nfp; } ;
struct TYPE_3__ {scalar_t__ min; scalar_t__ nominal; scalar_t__ max; } ;


 TYPE_2__* AH9300 (struct ath_hal*) ;

__attribute__((used)) static int16_t ar9300_limit_nf_range(struct ath_hal *ah, int16_t nf)
{
    if (nf < AH9300(ah)->nfp->min) {
        return AH9300(ah)->nfp->nominal;
    } else if (nf > AH9300(ah)->nfp->max) {
        return AH9300(ah)->nfp->max;
    }
    return nf;
}
