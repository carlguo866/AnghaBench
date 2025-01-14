
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint16_t ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
struct TYPE_9__ {scalar_t__ bChannel; scalar_t__* tPow2x; } ;
struct TYPE_8__ {scalar_t__ synth_center; scalar_t__ ctl_center; } ;
typedef scalar_t__ HAL_BOOL ;
typedef TYPE_1__ CHAN_CENTERS ;
typedef TYPE_2__ CAL_TARGET_POWER_HT ;


 scalar_t__ AR5416_BCHAN_UNUSED ;
 int HALASSERT (int) ;
 int IEEE80211_IS_CHAN_2GHZ (struct ieee80211_channel const*) ;
 int OS_MEMCPY (TYPE_2__*,TYPE_2__*,int) ;
 int ar5416GetChannelCenters (struct ath_hal*,struct ieee80211_channel const*,TYPE_1__*) ;
 scalar_t__ ath_ee_interpolate (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ fbin2freq (scalar_t__,int ) ;

void
ar5416GetTargetPowers(struct ath_hal *ah, const struct ieee80211_channel *chan,
                      CAL_TARGET_POWER_HT *powInfo, uint16_t numChannels,
                      CAL_TARGET_POWER_HT *pNewPower, uint16_t numRates,
                      HAL_BOOL isHt40Target)
{
    uint16_t clo, chi;
    int i;
    int matchIndex = -1, lowIndex = -1;
    uint16_t freq;
    CHAN_CENTERS centers;

    ar5416GetChannelCenters(ah, chan, &centers);
    freq = isHt40Target ? centers.synth_center : centers.ctl_center;


    if (freq <= fbin2freq(powInfo[0].bChannel, IEEE80211_IS_CHAN_2GHZ(chan))) {
        matchIndex = 0;
    } else {
        for (i = 0; (i < numChannels) && (powInfo[i].bChannel != AR5416_BCHAN_UNUSED); i++) {
            if (freq == fbin2freq(powInfo[i].bChannel, IEEE80211_IS_CHAN_2GHZ(chan))) {
                matchIndex = i;
                break;
            } else if ((freq < fbin2freq(powInfo[i].bChannel, IEEE80211_IS_CHAN_2GHZ(chan))) &&
                       (freq > fbin2freq(powInfo[i - 1].bChannel, IEEE80211_IS_CHAN_2GHZ(chan))))
            {
                lowIndex = i - 1;
                break;
            }
        }
        if ((matchIndex == -1) && (lowIndex == -1)) {
            HALASSERT(freq > fbin2freq(powInfo[i - 1].bChannel, IEEE80211_IS_CHAN_2GHZ(chan)));
            matchIndex = i - 1;
        }
    }

    if (matchIndex != -1) {
        OS_MEMCPY(pNewPower, &powInfo[matchIndex], sizeof(*pNewPower));
    } else {
        HALASSERT(lowIndex != -1);




        clo = fbin2freq(powInfo[lowIndex].bChannel, IEEE80211_IS_CHAN_2GHZ(chan));
        chi = fbin2freq(powInfo[lowIndex + 1].bChannel, IEEE80211_IS_CHAN_2GHZ(chan));

        for (i = 0; i < numRates; i++) {
            pNewPower->tPow2x[i] = (uint8_t)ath_ee_interpolate(freq, clo, chi,
                                   powInfo[lowIndex].tPow2x[i], powInfo[lowIndex + 1].tPow2x[i]);
        }
    }
}
