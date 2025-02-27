
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int addr; } ;
struct sta_info {TYPE_3__ sta; struct ieee80211_sub_if_data* sdata; } ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {int addr; } ;
struct ieee80211_sub_if_data {TYPE_2__ vif; struct ieee80211_local* local; } ;
struct TYPE_4__ {scalar_t__ extra_tx_headroom; } ;
struct ieee80211_local {TYPE_1__ hw; } ;
struct ieee80211_hdr {int addr1; scalar_t__ duration_id; int frame_control; } ;
typedef int __le16 ;


 int ETH_ALEN ;
 int IEEE80211_FTYPE_DATA ;
 int IEEE80211_STYPE_QOS_NULLFUNC ;
 int cpu_to_le16 (int) ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int ieee80211_fill_mesh_addresses (struct ieee80211_hdr*,int *,int ,int ) ;
 int ieee80211_mps_set_frame_flags (struct ieee80211_sub_if_data*,struct sta_info*,struct ieee80211_hdr*) ;
 int memcpy (int ,int ,int ) ;
 int memset (scalar_t__,int ,int) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static struct sk_buff *mps_qos_null_get(struct sta_info *sta)
{
 struct ieee80211_sub_if_data *sdata = sta->sdata;
 struct ieee80211_local *local = sdata->local;
 struct ieee80211_hdr *nullfunc;
 struct sk_buff *skb;
 int size = sizeof(*nullfunc);
 __le16 fc;

 skb = dev_alloc_skb(local->hw.extra_tx_headroom + size + 2);
 if (!skb)
  return ((void*)0);
 skb_reserve(skb, local->hw.extra_tx_headroom);

 nullfunc = (struct ieee80211_hdr *) skb_put(skb, size);
 fc = cpu_to_le16(IEEE80211_FTYPE_DATA | IEEE80211_STYPE_QOS_NULLFUNC);
 ieee80211_fill_mesh_addresses(nullfunc, &fc, sta->sta.addr,
          sdata->vif.addr);
 nullfunc->frame_control = fc;
 nullfunc->duration_id = 0;

 memcpy(nullfunc->addr1, sta->sta.addr, ETH_ALEN);
 memset(skb_put(skb, 2), 0, 2);
 ieee80211_mps_set_frame_flags(sdata, sta, nullfunc);

 return skb;
}
