
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
struct TYPE_2__ {int ah_antControl; } ;
typedef int HAL_ANT_SETTING ;


 TYPE_1__* AH5212 (struct ath_hal*) ;

HAL_ANT_SETTING
ar5212GetAntennaSwitch(struct ath_hal *ah)
{
 return AH5212(ah)->ah_antControl;
}
