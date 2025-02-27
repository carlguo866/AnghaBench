
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_peer_assoc_complete_arg {int dummy; } ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_sta_vht_cap {int dummy; } ;
struct ieee80211_sta_ht_cap {int dummy; } ;
struct ieee80211_sta {struct ieee80211_sta_vht_cap vht_cap; struct ieee80211_sta_ht_cap ht_cap; } ;
struct ieee80211_hw {struct ath10k* priv; } ;
struct ieee80211_bss_conf {int bssid; int aid; } ;
struct ath10k_vif {int is_up; int vdev_id; int bssid; int aid; } ;
struct ath10k {int conf_mutex; } ;


 int ATH10K_DBG_MAC ;
 int WARN_ON (int) ;
 int WMI_PEER_DUMMY_VAR ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ,int ,int ) ;
 int ath10k_mac_vif_recalc_txbf (struct ath10k*,struct ieee80211_vif*,struct ieee80211_sta_vht_cap) ;
 int ath10k_peer_assoc_prepare (struct ath10k*,struct ieee80211_vif*,struct ieee80211_sta*,struct wmi_peer_assoc_complete_arg*) ;
 int ath10k_setup_peer_smps (struct ath10k*,struct ath10k_vif*,int ,struct ieee80211_sta_ht_cap*) ;
 int ath10k_warn (struct ath10k*,char*,int ,int,...) ;
 int ath10k_wmi_peer_assoc (struct ath10k*,struct wmi_peer_assoc_complete_arg*) ;
 int ath10k_wmi_peer_set_param (struct ath10k*,int ,int ,int ,int) ;
 int ath10k_wmi_vdev_up (struct ath10k*,int ,int ,int ) ;
 int ether_addr_copy (int ,int ) ;
 struct ieee80211_sta* ieee80211_find_sta (struct ieee80211_vif*,int ) ;
 int lockdep_assert_held (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void ath10k_bss_assoc(struct ieee80211_hw *hw,
        struct ieee80211_vif *vif,
        struct ieee80211_bss_conf *bss_conf)
{
 struct ath10k *ar = hw->priv;
 struct ath10k_vif *arvif = (void *)vif->drv_priv;
 struct ieee80211_sta_ht_cap ht_cap;
 struct ieee80211_sta_vht_cap vht_cap;
 struct wmi_peer_assoc_complete_arg peer_arg;
 struct ieee80211_sta *ap_sta;
 int ret;

 lockdep_assert_held(&ar->conf_mutex);

 ath10k_dbg(ar, ATH10K_DBG_MAC, "mac vdev %i assoc bssid %pM aid %d\n",
     arvif->vdev_id, arvif->bssid, arvif->aid);

 rcu_read_lock();

 ap_sta = ieee80211_find_sta(vif, bss_conf->bssid);
 if (!ap_sta) {
  ath10k_warn(ar, "failed to find station entry for bss %pM vdev %i\n",
       bss_conf->bssid, arvif->vdev_id);
  rcu_read_unlock();
  return;
 }




 ht_cap = ap_sta->ht_cap;
 vht_cap = ap_sta->vht_cap;

 ret = ath10k_peer_assoc_prepare(ar, vif, ap_sta, &peer_arg);
 if (ret) {
  ath10k_warn(ar, "failed to prepare peer assoc for %pM vdev %i: %d\n",
       bss_conf->bssid, arvif->vdev_id, ret);
  rcu_read_unlock();
  return;
 }

 rcu_read_unlock();

 ret = ath10k_wmi_peer_assoc(ar, &peer_arg);
 if (ret) {
  ath10k_warn(ar, "failed to run peer assoc for %pM vdev %i: %d\n",
       bss_conf->bssid, arvif->vdev_id, ret);
  return;
 }

 ret = ath10k_setup_peer_smps(ar, arvif, bss_conf->bssid, &ht_cap);
 if (ret) {
  ath10k_warn(ar, "failed to setup peer SMPS for vdev %i: %d\n",
       arvif->vdev_id, ret);
  return;
 }

 ret = ath10k_mac_vif_recalc_txbf(ar, vif, vht_cap);
 if (ret) {
  ath10k_warn(ar, "failed to recalc txbf for vdev %i on bss %pM: %d\n",
       arvif->vdev_id, bss_conf->bssid, ret);
  return;
 }

 ath10k_dbg(ar, ATH10K_DBG_MAC,
     "mac vdev %d up (associated) bssid %pM aid %d\n",
     arvif->vdev_id, bss_conf->bssid, bss_conf->aid);

 WARN_ON(arvif->is_up);

 arvif->aid = bss_conf->aid;
 ether_addr_copy(arvif->bssid, bss_conf->bssid);

 ret = ath10k_wmi_vdev_up(ar, arvif->vdev_id, arvif->aid, arvif->bssid);
 if (ret) {
  ath10k_warn(ar, "failed to set vdev %d up: %d\n",
       arvif->vdev_id, ret);
  return;
 }

 arvif->is_up = 1;





 ret = ath10k_wmi_peer_set_param(ar, arvif->vdev_id, arvif->bssid,
     WMI_PEER_DUMMY_VAR, 1);
 if (ret) {
  ath10k_warn(ar, "failed to poke peer %pM param for ps workaround on vdev %i: %d\n",
       arvif->bssid, arvif->vdev_id, ret);
  return;
 }
}
