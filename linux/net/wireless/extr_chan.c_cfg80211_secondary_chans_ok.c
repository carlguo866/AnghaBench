
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct wiphy {int dummy; } ;
struct ieee80211_channel {scalar_t__ flags; } ;


 scalar_t__ cfg80211_get_end_freq (scalar_t__,scalar_t__) ;
 scalar_t__ cfg80211_get_start_freq (scalar_t__,scalar_t__) ;
 struct ieee80211_channel* ieee80211_get_channel (struct wiphy*,scalar_t__) ;

__attribute__((used)) static bool cfg80211_secondary_chans_ok(struct wiphy *wiphy,
     u32 center_freq, u32 bandwidth,
     u32 prohibited_flags)
{
 struct ieee80211_channel *c;
 u32 freq, start_freq, end_freq;

 start_freq = cfg80211_get_start_freq(center_freq, bandwidth);
 end_freq = cfg80211_get_end_freq(center_freq, bandwidth);

 for (freq = start_freq; freq <= end_freq; freq += 20) {
  c = ieee80211_get_channel(wiphy, freq);
  if (!c || c->flags & prohibited_flags)
   return 0;
 }

 return 1;
}
