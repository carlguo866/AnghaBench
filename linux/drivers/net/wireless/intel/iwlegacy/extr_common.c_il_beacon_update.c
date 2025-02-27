
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct il_priv {TYPE_3__* ops; int lock; int timestamp; struct sk_buff* beacon_skb; int beacon_enabled; int mutex; } ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_4__ {int timestamp; } ;
struct TYPE_5__ {TYPE_1__ beacon; } ;
struct ieee80211_mgmt {TYPE_2__ u; } ;
struct ieee80211_hw {struct il_priv* priv; } ;
typedef int __le64 ;
struct TYPE_6__ {int (* post_associate ) (struct il_priv*) ;} ;


 int D_MAC80211 (char*) ;
 int IL_ERR (char*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct sk_buff* ieee80211_beacon_get (struct ieee80211_hw*,struct ieee80211_vif*) ;
 int il_is_ready_rf (struct il_priv*) ;
 int le64_to_cpu (int ) ;
 int lockdep_assert_held (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct il_priv*) ;

__attribute__((used)) static void
il_beacon_update(struct ieee80211_hw *hw, struct ieee80211_vif *vif)
{
 struct il_priv *il = hw->priv;
 unsigned long flags;
 __le64 timestamp;
 struct sk_buff *skb = ieee80211_beacon_get(hw, vif);

 if (!skb)
  return;

 D_MAC80211("enter\n");

 lockdep_assert_held(&il->mutex);

 if (!il->beacon_enabled) {
  IL_ERR("update beacon with no beaconing enabled\n");
  dev_kfree_skb(skb);
  return;
 }

 spin_lock_irqsave(&il->lock, flags);

 if (il->beacon_skb)
  dev_kfree_skb(il->beacon_skb);

 il->beacon_skb = skb;

 timestamp = ((struct ieee80211_mgmt *)skb->data)->u.beacon.timestamp;
 il->timestamp = le64_to_cpu(timestamp);

 D_MAC80211("leave\n");
 spin_unlock_irqrestore(&il->lock, flags);

 if (!il_is_ready_rf(il)) {
  D_MAC80211("leave - RF not ready\n");
  return;
 }

 il->ops->post_associate(il);
}
