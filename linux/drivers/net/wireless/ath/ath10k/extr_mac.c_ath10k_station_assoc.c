
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_peer_assoc_complete_arg {int dummy; } ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_sta {int addr; int tdls; int wme; int ht_cap; } ;
struct ath10k_vif {int def_wep_key_idx; int vdev_id; int num_legacy_stations; } ;
struct ath10k {int conf_mutex; } ;


 int ath10k_install_peer_wep_keys (struct ath10k_vif*,int ) ;
 int ath10k_peer_assoc_prepare (struct ath10k*,struct ieee80211_vif*,struct ieee80211_sta*,struct wmi_peer_assoc_complete_arg*) ;
 int ath10k_peer_assoc_qos_ap (struct ath10k*,struct ath10k_vif*,struct ieee80211_sta*) ;
 int ath10k_recalc_rtscts_prot (struct ath10k_vif*) ;
 int ath10k_setup_peer_smps (struct ath10k*,struct ath10k_vif*,int ,int *) ;
 int ath10k_warn (struct ath10k*,char*,int ,int,...) ;
 int ath10k_wmi_peer_assoc (struct ath10k*,struct wmi_peer_assoc_complete_arg*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int ath10k_station_assoc(struct ath10k *ar,
    struct ieee80211_vif *vif,
    struct ieee80211_sta *sta,
    bool reassoc)
{
 struct ath10k_vif *arvif = (void *)vif->drv_priv;
 struct wmi_peer_assoc_complete_arg peer_arg;
 int ret = 0;

 lockdep_assert_held(&ar->conf_mutex);

 ret = ath10k_peer_assoc_prepare(ar, vif, sta, &peer_arg);
 if (ret) {
  ath10k_warn(ar, "failed to prepare WMI peer assoc for %pM vdev %i: %i\n",
       sta->addr, arvif->vdev_id, ret);
  return ret;
 }

 ret = ath10k_wmi_peer_assoc(ar, &peer_arg);
 if (ret) {
  ath10k_warn(ar, "failed to run peer assoc for STA %pM vdev %i: %d\n",
       sta->addr, arvif->vdev_id, ret);
  return ret;
 }




 if (!reassoc) {
  ret = ath10k_setup_peer_smps(ar, arvif, sta->addr,
          &sta->ht_cap);
  if (ret) {
   ath10k_warn(ar, "failed to setup peer SMPS for vdev %d: %d\n",
        arvif->vdev_id, ret);
   return ret;
  }

  ret = ath10k_peer_assoc_qos_ap(ar, arvif, sta);
  if (ret) {
   ath10k_warn(ar, "failed to set qos params for STA %pM for vdev %i: %d\n",
        sta->addr, arvif->vdev_id, ret);
   return ret;
  }

  if (!sta->wme) {
   arvif->num_legacy_stations++;
   ret = ath10k_recalc_rtscts_prot(arvif);
   if (ret) {
    ath10k_warn(ar, "failed to recalculate rts/cts prot for vdev %d: %d\n",
         arvif->vdev_id, ret);
    return ret;
   }
  }


  if ((arvif->def_wep_key_idx != -1) && (!sta->tdls)) {
   ret = ath10k_install_peer_wep_keys(arvif, sta->addr);
   if (ret) {
    ath10k_warn(ar, "failed to install peer wep keys for vdev %i: %d\n",
         arvif->vdev_id, ret);
    return ret;
   }
  }
 }

 return ret;
}
