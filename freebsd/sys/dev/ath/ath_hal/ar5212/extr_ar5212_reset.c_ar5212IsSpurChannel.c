
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 scalar_t__ IS_2417 (struct ath_hal*) ;
 scalar_t__ IS_5413 (struct ath_hal*) ;
 scalar_t__ IS_RAD5112_ANY (struct ath_hal*) ;
 int ath_hal_gethwchannel (struct ath_hal*,struct ieee80211_channel const*) ;

HAL_BOOL
ar5212IsSpurChannel(struct ath_hal *ah, const struct ieee80211_channel *chan)
{
 uint16_t freq = ath_hal_gethwchannel(ah, chan);
 uint32_t clockFreq =
     ((IS_5413(ah) || IS_RAD5112_ANY(ah) || IS_2417(ah)) ? 40 : 32);
 return ( ((freq % clockFreq) != 0)
              && (((freq % clockFreq) < 10)
             || (((freq) % clockFreq) > 22)) );
}
