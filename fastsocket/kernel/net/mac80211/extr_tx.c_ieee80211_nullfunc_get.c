
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ieee80211_vif {scalar_t__ type; int addr; } ;
struct ieee80211_if_managed {int bssid; } ;
struct TYPE_3__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; TYPE_1__ u; } ;
struct TYPE_4__ {scalar_t__ extra_tx_headroom; } ;
struct ieee80211_local {TYPE_2__ hw; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr_3addr {int addr3; int addr2; int addr1; int frame_control; } ;


 int ETH_ALEN ;
 int IEEE80211_FCTL_TODS ;
 int IEEE80211_FTYPE_DATA ;
 int IEEE80211_STYPE_NULLFUNC ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 scalar_t__ WARN_ON (int) ;
 int cpu_to_le16 (int) ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct ieee80211_hdr_3addr*,int ,int) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 struct ieee80211_sub_if_data* vif_to_sdata (struct ieee80211_vif*) ;

struct sk_buff *ieee80211_nullfunc_get(struct ieee80211_hw *hw,
           struct ieee80211_vif *vif)
{
 struct ieee80211_hdr_3addr *nullfunc;
 struct ieee80211_sub_if_data *sdata;
 struct ieee80211_if_managed *ifmgd;
 struct ieee80211_local *local;
 struct sk_buff *skb;

 if (WARN_ON(vif->type != NL80211_IFTYPE_STATION))
  return ((void*)0);

 sdata = vif_to_sdata(vif);
 ifmgd = &sdata->u.mgd;
 local = sdata->local;

 skb = dev_alloc_skb(local->hw.extra_tx_headroom + sizeof(*nullfunc));
 if (!skb)
  return ((void*)0);

 skb_reserve(skb, local->hw.extra_tx_headroom);

 nullfunc = (struct ieee80211_hdr_3addr *) skb_put(skb,
         sizeof(*nullfunc));
 memset(nullfunc, 0, sizeof(*nullfunc));
 nullfunc->frame_control = cpu_to_le16(IEEE80211_FTYPE_DATA |
           IEEE80211_STYPE_NULLFUNC |
           IEEE80211_FCTL_TODS);
 memcpy(nullfunc->addr1, ifmgd->bssid, ETH_ALEN);
 memcpy(nullfunc->addr2, vif->addr, ETH_ALEN);
 memcpy(nullfunc->addr3, ifmgd->bssid, ETH_ALEN);

 return skb;
}
