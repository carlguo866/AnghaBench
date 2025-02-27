
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct TYPE_13__ {int const* bssid; } ;
struct TYPE_11__ {int const* bssid; } ;
struct TYPE_14__ {TYPE_4__ ibss; TYPE_2__ mgd; } ;
struct TYPE_12__ {scalar_t__ type; int const* addr; } ;
struct ieee80211_sub_if_data {TYPE_5__ u; TYPE_3__ vif; struct ieee80211_local* local; } ;
struct TYPE_15__ {void* reason_code; void* params; int action_code; } ;
struct TYPE_16__ {TYPE_6__ delba; } ;
struct TYPE_17__ {TYPE_7__ u; int category; } ;
struct TYPE_18__ {TYPE_8__ action; } ;
struct ieee80211_mgmt {TYPE_9__ u; void* frame_control; int bssid; int sa; int da; } ;
struct TYPE_10__ {scalar_t__ extra_tx_headroom; } ;
struct ieee80211_local {TYPE_1__ hw; } ;


 int ETH_ALEN ;
 int IEEE80211_FTYPE_MGMT ;
 int IEEE80211_STYPE_ACTION ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_AP_VLAN ;
 scalar_t__ NL80211_IFTYPE_MESH_POINT ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int WLAN_ACTION_DELBA ;
 int WLAN_CATEGORY_BACK ;
 void* cpu_to_le16 (int) ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int ieee80211_tx_skb_tid (struct ieee80211_sub_if_data*,struct sk_buff*,int) ;
 int memcpy (int ,int const*,int ) ;
 int memset (struct ieee80211_mgmt*,int ,int) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;

void ieee80211_send_delba(struct ieee80211_sub_if_data *sdata,
     const u8 *da, u16 tid,
     u16 initiator, u16 reason_code)
{
 struct ieee80211_local *local = sdata->local;
 struct sk_buff *skb;
 struct ieee80211_mgmt *mgmt;
 u16 params;

 skb = dev_alloc_skb(sizeof(*mgmt) + local->hw.extra_tx_headroom);
 if (!skb)
  return;

 skb_reserve(skb, local->hw.extra_tx_headroom);
 mgmt = (struct ieee80211_mgmt *) skb_put(skb, 24);
 memset(mgmt, 0, 24);
 memcpy(mgmt->da, da, ETH_ALEN);
 memcpy(mgmt->sa, sdata->vif.addr, ETH_ALEN);
 if (sdata->vif.type == NL80211_IFTYPE_AP ||
     sdata->vif.type == NL80211_IFTYPE_AP_VLAN ||
     sdata->vif.type == NL80211_IFTYPE_MESH_POINT)
  memcpy(mgmt->bssid, sdata->vif.addr, ETH_ALEN);
 else if (sdata->vif.type == NL80211_IFTYPE_STATION)
  memcpy(mgmt->bssid, sdata->u.mgd.bssid, ETH_ALEN);
 else if (sdata->vif.type == NL80211_IFTYPE_ADHOC)
  memcpy(mgmt->bssid, sdata->u.ibss.bssid, ETH_ALEN);

 mgmt->frame_control = cpu_to_le16(IEEE80211_FTYPE_MGMT |
       IEEE80211_STYPE_ACTION);

 skb_put(skb, 1 + sizeof(mgmt->u.action.u.delba));

 mgmt->u.action.category = WLAN_CATEGORY_BACK;
 mgmt->u.action.u.delba.action_code = WLAN_ACTION_DELBA;
 params = (u16)(initiator << 11);
 params |= (u16)(tid << 12);

 mgmt->u.action.u.delba.params = cpu_to_le16(params);
 mgmt->u.action.u.delba.reason_code = cpu_to_le16(reason_code);

 ieee80211_tx_skb_tid(sdata, skb, tid);
}
