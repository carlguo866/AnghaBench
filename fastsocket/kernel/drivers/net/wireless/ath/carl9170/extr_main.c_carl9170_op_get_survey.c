
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct survey_info {int filled; struct ieee80211_channel* channel; } ;
struct ieee80211_supported_band {int n_channels; struct ieee80211_channel* channels; } ;
struct ieee80211_hw {struct ar9170* priv; } ;
struct ieee80211_channel {int hw_value; } ;
struct TYPE_6__ {scalar_t__ hw_counters; } ;
struct ar9170 {TYPE_3__ fw; struct ieee80211_channel* channel; int * survey; TYPE_2__* hw; int mutex; } ;
struct TYPE_5__ {TYPE_1__* wiphy; } ;
struct TYPE_4__ {struct ieee80211_supported_band** bands; } ;


 int ENODEV ;
 int ENOENT ;
 int IEEE80211_NUM_BANDS ;
 int SURVEY_INFO_CHANNEL_TIME ;
 int SURVEY_INFO_CHANNEL_TIME_BUSY ;
 int SURVEY_INFO_CHANNEL_TIME_TX ;
 int SURVEY_INFO_IN_USE ;
 int SURVEY_INFO_NOISE_DBM ;
 int carl9170_update_survey (struct ar9170*,int,int) ;
 int memcpy (struct survey_info*,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int carl9170_op_get_survey(struct ieee80211_hw *hw, int idx,
    struct survey_info *survey)
{
 struct ar9170 *ar = hw->priv;
 struct ieee80211_channel *chan;
 struct ieee80211_supported_band *band;
 int err, b, i;

 chan = ar->channel;
 if (!chan)
  return -ENODEV;

 if (idx == chan->hw_value) {
  mutex_lock(&ar->mutex);
  err = carl9170_update_survey(ar, 0, 1);
  mutex_unlock(&ar->mutex);
  if (err)
   return err;
 }

 for (b = 0; b < IEEE80211_NUM_BANDS; b++) {
  band = ar->hw->wiphy->bands[b];

  if (!band)
   continue;

  for (i = 0; i < band->n_channels; i++) {
   if (band->channels[i].hw_value == idx) {
    chan = &band->channels[i];
    goto found;
   }
  }
 }
 return -ENOENT;

found:
 memcpy(survey, &ar->survey[idx], sizeof(*survey));

 survey->channel = chan;
 survey->filled = SURVEY_INFO_NOISE_DBM;

 if (ar->channel == chan)
  survey->filled |= SURVEY_INFO_IN_USE;

 if (ar->fw.hw_counters) {
  survey->filled |= SURVEY_INFO_CHANNEL_TIME |
      SURVEY_INFO_CHANNEL_TIME_BUSY |
      SURVEY_INFO_CHANNEL_TIME_TX;
 }

 return 0;
}
