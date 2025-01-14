
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_freq_range {int start_freq_khz; int end_freq_khz; } ;



bool cfg80211_does_bw_fit_range(const struct ieee80211_freq_range *freq_range,
    u32 center_freq_khz, u32 bw_khz)
{
 u32 start_freq_khz, end_freq_khz;

 start_freq_khz = center_freq_khz - (bw_khz / 2);
 end_freq_khz = center_freq_khz + (bw_khz / 2);

 if (start_freq_khz >= freq_range->start_freq_khz &&
     end_freq_khz <= freq_range->end_freq_khz)
  return 1;

 return 0;
}
