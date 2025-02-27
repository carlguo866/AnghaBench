
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_4__ {int cap; int vht_mcs; scalar_t__ vht_supported; } ;
struct TYPE_3__ {int ampdu_density; int ampdu_factor; int cap; int mcs; scalar_t__ ht_supported; } ;
struct ieee80211_supported_band {int n_bitrates; struct ieee80211_rate* bitrates; TYPE_2__ vht_cap; TYPE_1__ ht_cap; } ;
struct ieee80211_rate {int flags; int bitrate; } ;


 int ENOBUFS ;
 int IEEE80211_RATE_SHORT_PREAMBLE ;
 int NL80211_BAND_ATTR_HT_AMPDU_DENSITY ;
 int NL80211_BAND_ATTR_HT_AMPDU_FACTOR ;
 int NL80211_BAND_ATTR_HT_CAPA ;
 int NL80211_BAND_ATTR_HT_MCS_SET ;
 int NL80211_BAND_ATTR_RATES ;
 int NL80211_BAND_ATTR_VHT_CAPA ;
 int NL80211_BAND_ATTR_VHT_MCS_SET ;
 int NL80211_BITRATE_ATTR_2GHZ_SHORTPREAMBLE ;
 int NL80211_BITRATE_ATTR_RATE ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,int *) ;
 scalar_t__ nla_put_flag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u16 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int nl80211_send_band_rateinfo(struct sk_buff *msg,
          struct ieee80211_supported_band *sband)
{
 struct nlattr *nl_rates, *nl_rate;
 struct ieee80211_rate *rate;
 int i;


 if (sband->ht_cap.ht_supported &&
     (nla_put(msg, NL80211_BAND_ATTR_HT_MCS_SET,
       sizeof(sband->ht_cap.mcs),
       &sband->ht_cap.mcs) ||
      nla_put_u16(msg, NL80211_BAND_ATTR_HT_CAPA,
    sband->ht_cap.cap) ||
      nla_put_u8(msg, NL80211_BAND_ATTR_HT_AMPDU_FACTOR,
   sband->ht_cap.ampdu_factor) ||
      nla_put_u8(msg, NL80211_BAND_ATTR_HT_AMPDU_DENSITY,
   sband->ht_cap.ampdu_density)))
  return -ENOBUFS;


 if (sband->vht_cap.vht_supported &&
     (nla_put(msg, NL80211_BAND_ATTR_VHT_MCS_SET,
       sizeof(sband->vht_cap.vht_mcs),
       &sband->vht_cap.vht_mcs) ||
      nla_put_u32(msg, NL80211_BAND_ATTR_VHT_CAPA,
    sband->vht_cap.cap)))
  return -ENOBUFS;


 nl_rates = nla_nest_start(msg, NL80211_BAND_ATTR_RATES);
 if (!nl_rates)
  return -ENOBUFS;

 for (i = 0; i < sband->n_bitrates; i++) {
  nl_rate = nla_nest_start(msg, i);
  if (!nl_rate)
   return -ENOBUFS;

  rate = &sband->bitrates[i];
  if (nla_put_u32(msg, NL80211_BITRATE_ATTR_RATE,
    rate->bitrate))
   return -ENOBUFS;
  if ((rate->flags & IEEE80211_RATE_SHORT_PREAMBLE) &&
      nla_put_flag(msg,
     NL80211_BITRATE_ATTR_2GHZ_SHORTPREAMBLE))
   return -ENOBUFS;

  nla_nest_end(msg, nl_rate);
 }

 nla_nest_end(msg, nl_rates);

 return 0;
}
