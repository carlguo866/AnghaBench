
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int uapsd_queues; int addr; int drv_priv; } ;
struct ieee80211_hw {struct cw1200_common* priv; } ;
struct cw1200_sta_priv {int link_id; } ;
struct cw1200_link_entry {int rx_queue; int status; } ;
struct cw1200_common {scalar_t__ mode; int ps_state_lock; TYPE_1__* hw; int sta_asleep_mask; struct cw1200_link_entry* link_id_db; } ;
struct TYPE_2__ {int wiphy; } ;


 int BIT (int) ;
 int CW1200_LINK_HARD ;
 int ENOENT ;
 int IEEE80211_WMM_IE_STA_QOSINFO_AC_MASK ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ WARN_ON (int) ;
 int cw1200_find_link_id (struct cw1200_common*,int ) ;
 int ieee80211_rx_irqsafe (TYPE_1__*,struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wiphy_info (int ,char*) ;

int cw1200_sta_add(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
     struct ieee80211_sta *sta)
{
 struct cw1200_common *priv = hw->priv;
 struct cw1200_sta_priv *sta_priv =
   (struct cw1200_sta_priv *)&sta->drv_priv;
 struct cw1200_link_entry *entry;
 struct sk_buff *skb;

 if (priv->mode != NL80211_IFTYPE_AP)
  return 0;

 sta_priv->link_id = cw1200_find_link_id(priv, sta->addr);
 if (WARN_ON(!sta_priv->link_id)) {
  wiphy_info(priv->hw->wiphy,
      "[AP] No more link IDs available.\n");
  return -ENOENT;
 }

 entry = &priv->link_id_db[sta_priv->link_id - 1];
 spin_lock_bh(&priv->ps_state_lock);
 if ((sta->uapsd_queues & IEEE80211_WMM_IE_STA_QOSINFO_AC_MASK) ==
     IEEE80211_WMM_IE_STA_QOSINFO_AC_MASK)
  priv->sta_asleep_mask |= BIT(sta_priv->link_id);
 entry->status = CW1200_LINK_HARD;
 while ((skb = skb_dequeue(&entry->rx_queue)))
  ieee80211_rx_irqsafe(priv->hw, skb);
 spin_unlock_bh(&priv->ps_state_lock);
 return 0;
}
