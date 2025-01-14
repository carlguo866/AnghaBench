
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_11__ {int bssid; } ;
struct TYPE_12__ {TYPE_3__ mgd; } ;
struct TYPE_10__ {int addr; } ;
struct ieee80211_sub_if_data {TYPE_4__ u; TYPE_2__ vif; struct ieee80211_local* local; } ;
struct TYPE_13__ {int trans_id; int action; } ;
struct TYPE_14__ {TYPE_5__ sa_query; } ;
struct TYPE_15__ {TYPE_6__ u; int category; } ;
struct TYPE_16__ {TYPE_7__ action; } ;
struct ieee80211_mgmt {TYPE_8__ u; int frame_control; int bssid; int sa; int da; } ;
struct TYPE_9__ {scalar_t__ extra_tx_headroom; } ;
struct ieee80211_local {TYPE_1__ hw; } ;


 int ETH_ALEN ;
 int IEEE80211_FTYPE_MGMT ;
 int IEEE80211_STYPE_ACTION ;
 int WLAN_ACTION_SA_QUERY_RESPONSE ;
 int WLAN_CATEGORY_SA_QUERY ;
 int WLAN_SA_QUERY_TR_ID_LEN ;
 int cpu_to_le16 (int) ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int ether_addr_equal (int ,int ) ;
 int ieee80211_tx_skb (struct ieee80211_sub_if_data*,struct sk_buff*) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct ieee80211_mgmt*,int ,int) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static void ieee80211_process_sa_query_req(struct ieee80211_sub_if_data *sdata,
        struct ieee80211_mgmt *mgmt,
        size_t len)
{
 struct ieee80211_local *local = sdata->local;
 struct sk_buff *skb;
 struct ieee80211_mgmt *resp;

 if (!ether_addr_equal(mgmt->da, sdata->vif.addr)) {

  return;
 }

 if (!ether_addr_equal(mgmt->sa, sdata->u.mgd.bssid) ||
     !ether_addr_equal(mgmt->bssid, sdata->u.mgd.bssid)) {

  return;
 }

 if (len < 24 + 1 + sizeof(resp->u.action.u.sa_query)) {

  return;
 }

 skb = dev_alloc_skb(sizeof(*resp) + local->hw.extra_tx_headroom);
 if (skb == ((void*)0))
  return;

 skb_reserve(skb, local->hw.extra_tx_headroom);
 resp = (struct ieee80211_mgmt *) skb_put(skb, 24);
 memset(resp, 0, 24);
 memcpy(resp->da, mgmt->sa, ETH_ALEN);
 memcpy(resp->sa, sdata->vif.addr, ETH_ALEN);
 memcpy(resp->bssid, sdata->u.mgd.bssid, ETH_ALEN);
 resp->frame_control = cpu_to_le16(IEEE80211_FTYPE_MGMT |
       IEEE80211_STYPE_ACTION);
 skb_put(skb, 1 + sizeof(resp->u.action.u.sa_query));
 resp->u.action.category = WLAN_CATEGORY_SA_QUERY;
 resp->u.action.u.sa_query.action = WLAN_ACTION_SA_QUERY_RESPONSE;
 memcpy(resp->u.action.u.sa_query.trans_id,
        mgmt->u.action.u.sa_query.trans_id,
        WLAN_SA_QUERY_TR_ID_LEN);

 ieee80211_tx_skb(sdata, skb);
}
