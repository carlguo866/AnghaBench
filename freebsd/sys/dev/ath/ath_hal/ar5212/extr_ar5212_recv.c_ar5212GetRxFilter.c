
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct ath_hal {int dummy; } ;
struct TYPE_6__ {int ah_miscMode; } ;
struct TYPE_4__ {scalar_t__ halBssidMatchSupport; } ;
struct TYPE_5__ {TYPE_1__ ah_caps; } ;


 TYPE_3__* AH5212 (struct ath_hal*) ;
 TYPE_2__* AH_PRIVATE (struct ath_hal*) ;
 int AR_MISC_MODE_BSSID_MATCH_FORCE ;
 int AR_PHY_ERR ;
 int AR_PHY_ERR_CCK_TIMING ;
 int AR_PHY_ERR_OFDM_TIMING ;
 int AR_PHY_ERR_RADAR ;
 int AR_RX_FILTER ;
 int HAL_RX_FILTER_BSSID ;
 int HAL_RX_FILTER_PHYERR ;
 int HAL_RX_FILTER_PHYRADAR ;
 int OS_REG_READ (struct ath_hal*,int ) ;

uint32_t
ar5212GetRxFilter(struct ath_hal *ah)
{
 uint32_t bits = OS_REG_READ(ah, AR_RX_FILTER);
 uint32_t phybits = OS_REG_READ(ah, AR_PHY_ERR);
 if (phybits & AR_PHY_ERR_RADAR)
  bits |= HAL_RX_FILTER_PHYRADAR;
 if (phybits & (AR_PHY_ERR_OFDM_TIMING|AR_PHY_ERR_CCK_TIMING))
  bits |= HAL_RX_FILTER_PHYERR;
 if (AH_PRIVATE(ah)->ah_caps.halBssidMatchSupport &&
     (AH5212(ah)->ah_miscMode & AR_MISC_MODE_BSSID_MATCH_FORCE))
  bits |= HAL_RX_FILTER_BSSID;
 return bits;
}
