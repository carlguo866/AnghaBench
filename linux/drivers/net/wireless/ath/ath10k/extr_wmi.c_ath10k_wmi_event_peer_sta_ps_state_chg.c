
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int addr; } ;
struct wmi_peer_sta_ps_state_chg_event {int peer_ps_state; TYPE_1__ peer_macaddr; } ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ath10k_sta {int peer_ps_state; } ;
struct ath10k {int hw; int data_lock; } ;


 int ETH_ALEN ;
 int __le32_to_cpu (int ) ;
 int ath10k_warn (struct ath10k*,char*,int *) ;
 int ether_addr_copy (int *,int ) ;
 struct ieee80211_sta* ieee80211_find_sta_by_ifaddr (int ,int *,int *) ;
 int lockdep_assert_held (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void
ath10k_wmi_event_peer_sta_ps_state_chg(struct ath10k *ar, struct sk_buff *skb)
{
 struct wmi_peer_sta_ps_state_chg_event *ev;
 struct ieee80211_sta *sta;
 struct ath10k_sta *arsta;
 u8 peer_addr[ETH_ALEN];

 lockdep_assert_held(&ar->data_lock);

 ev = (struct wmi_peer_sta_ps_state_chg_event *)skb->data;
 ether_addr_copy(peer_addr, ev->peer_macaddr.addr);

 rcu_read_lock();

 sta = ieee80211_find_sta_by_ifaddr(ar->hw, peer_addr, ((void*)0));

 if (!sta) {
  ath10k_warn(ar, "failed to find station entry %pM\n",
       peer_addr);
  goto exit;
 }

 arsta = (struct ath10k_sta *)sta->drv_priv;
 arsta->peer_ps_state = __le32_to_cpu(ev->peer_ps_state);

exit:
 rcu_read_unlock();
}
