
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct ieee80211_channel {scalar_t__ ic_freq; int ic_flags; int ic_vht_ch_freq1; } ;


 scalar_t__ IEEE80211_IS_CHAN_HT40D (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_HT40U (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_VHT (struct ieee80211_channel const*) ;
 scalar_t__ ieee80211_ieee2mhz (int ,int ) ;

uint32_t
ieee80211_get_channel_center_freq1(const struct ieee80211_channel *c)
{





 if (IEEE80211_IS_CHAN_VHT(c))
  return (ieee80211_ieee2mhz(c->ic_vht_ch_freq1, c->ic_flags));

 if (IEEE80211_IS_CHAN_HT40U(c)) {
  return (c->ic_freq + 10);
 }
 if (IEEE80211_IS_CHAN_HT40D(c)) {
  return (c->ic_freq - 10);
 }

 return (c->ic_freq);
}
