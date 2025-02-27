
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ath_hal_5212 {int ah_macaddr; } ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 struct ath_hal_5212* AH5212 (struct ath_hal*) ;
 int AH_TRUE ;
 int IEEE80211_ADDR_LEN ;
 int OS_MEMCPY (int ,int const*,int ) ;

HAL_BOOL
ar5212SetMacAddress(struct ath_hal *ah, const uint8_t *mac)
{
 struct ath_hal_5212 *ahp = AH5212(ah);

 OS_MEMCPY(ahp->ah_macaddr, mac, IEEE80211_ADDR_LEN);
 return AH_TRUE;
}
