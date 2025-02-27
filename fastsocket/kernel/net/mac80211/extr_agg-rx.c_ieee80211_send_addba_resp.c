
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
struct TYPE_13__ {int * bssid; } ;
struct TYPE_11__ {int * bssid; } ;
struct TYPE_14__ {TYPE_4__ ibss; TYPE_2__ mgd; } ;
struct TYPE_12__ {scalar_t__ type; int * addr; } ;
struct ieee80211_sub_if_data {TYPE_5__ u; TYPE_3__ vif; struct ieee80211_local* local; } ;
struct TYPE_15__ {void* status; void* timeout; void* capab; int dialog_token; int action_code; } ;
struct TYPE_16__ {TYPE_6__ addba_resp; } ;
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
 int WLAN_ACTION_ADDBA_RESP ;
 int WLAN_CATEGORY_BACK ;
 void* cpu_to_le16 (int) ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int ieee80211_tx_skb (struct ieee80211_sub_if_data*,struct sk_buff*) ;
 int memcpy (int ,int *,int ) ;
 int memset (struct ieee80211_mgmt*,int ,int) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static void ieee80211_send_addba_resp(struct ieee80211_sub_if_data *sdata, u8 *da, u16 tid,
          u8 dialog_token, u16 status, u16 policy,
          u16 buf_size, u16 timeout)
{
 struct ieee80211_local *local = sdata->local;
 struct sk_buff *skb;
 struct ieee80211_mgmt *mgmt;
 u16 capab;

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

 skb_put(skb, 1 + sizeof(mgmt->u.action.u.addba_resp));
 mgmt->u.action.category = WLAN_CATEGORY_BACK;
 mgmt->u.action.u.addba_resp.action_code = WLAN_ACTION_ADDBA_RESP;
 mgmt->u.action.u.addba_resp.dialog_token = dialog_token;

 capab = (u16)(policy << 1);
 capab |= (u16)(tid << 2);
 capab |= (u16)(buf_size << 6);

 mgmt->u.action.u.addba_resp.capab = cpu_to_le16(capab);
 mgmt->u.action.u.addba_resp.timeout = cpu_to_le16(timeout);
 mgmt->u.action.u.addba_resp.status = cpu_to_le16(status);

 ieee80211_tx_skb(sdata, skb);
}
