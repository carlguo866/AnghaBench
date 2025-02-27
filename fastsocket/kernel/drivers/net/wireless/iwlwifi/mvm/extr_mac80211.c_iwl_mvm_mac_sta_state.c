
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iwl_mvm_vif {TYPE_3__* phy_ctxt; } ;
struct iwl_mvm {int mutex; int sta_drained_wk; } ;
struct TYPE_4__ {int beacon_int; } ;
struct ieee80211_vif {scalar_t__ type; TYPE_1__ bss_conf; } ;
struct ieee80211_sta {int addr; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum ieee80211_sta_state { ____Placeholder_ieee80211_sta_state } ieee80211_sta_state ;
struct TYPE_6__ {TYPE_2__* channel; } ;
struct TYPE_5__ {int band; } ;


 int EINVAL ;
 int EIO ;
 int IEEE80211_STA_ASSOC ;
 int IEEE80211_STA_AUTH ;
 int IEEE80211_STA_AUTHORIZED ;
 int IEEE80211_STA_NONE ;
 int IEEE80211_STA_NOTEXIST ;
 int IWL_DEBUG_MAC80211 (struct iwl_mvm*,char*,int ,int,int) ;
 int IWL_ERR (struct iwl_mvm*,char*,int ,int) ;
 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int flush_work (int *) ;
 int iwl_mvm_add_sta (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_sta*) ;
 int iwl_mvm_rm_sta (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_sta*) ;
 int iwl_mvm_rs_rate_init (struct iwl_mvm*,struct ieee80211_sta*,int ) ;
 int iwl_mvm_update_sta (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_sta*) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int iwl_mvm_mac_sta_state(struct ieee80211_hw *hw,
     struct ieee80211_vif *vif,
     struct ieee80211_sta *sta,
     enum ieee80211_sta_state old_state,
     enum ieee80211_sta_state new_state)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 int ret;

 IWL_DEBUG_MAC80211(mvm, "station %pM state change %d->%d\n",
      sta->addr, old_state, new_state);


 if (WARN_ON_ONCE(!mvmvif->phy_ctxt))
  return -EINVAL;


 flush_work(&mvm->sta_drained_wk);

 mutex_lock(&mvm->mutex);
 if (old_state == IEEE80211_STA_NOTEXIST &&
     new_state == IEEE80211_STA_NONE) {







  if (vif->type == NL80211_IFTYPE_STATION &&
      vif->bss_conf.beacon_int < 16) {
   IWL_ERR(mvm,
    "AP %pM beacon interval is %d, refusing due to firmware bug!\n",
    sta->addr, vif->bss_conf.beacon_int);
   ret = -EINVAL;
   goto out_unlock;
  }
  ret = iwl_mvm_add_sta(mvm, vif, sta);
 } else if (old_state == IEEE80211_STA_NONE &&
     new_state == IEEE80211_STA_AUTH) {
  ret = 0;
 } else if (old_state == IEEE80211_STA_AUTH &&
     new_state == IEEE80211_STA_ASSOC) {
  ret = iwl_mvm_update_sta(mvm, vif, sta);
  if (ret == 0)
   iwl_mvm_rs_rate_init(mvm, sta,
          mvmvif->phy_ctxt->channel->band);
 } else if (old_state == IEEE80211_STA_ASSOC &&
     new_state == IEEE80211_STA_AUTHORIZED) {
  ret = 0;
 } else if (old_state == IEEE80211_STA_AUTHORIZED &&
     new_state == IEEE80211_STA_ASSOC) {
  ret = 0;
 } else if (old_state == IEEE80211_STA_ASSOC &&
     new_state == IEEE80211_STA_AUTH) {
  ret = 0;
 } else if (old_state == IEEE80211_STA_AUTH &&
     new_state == IEEE80211_STA_NONE) {
  ret = 0;
 } else if (old_state == IEEE80211_STA_NONE &&
     new_state == IEEE80211_STA_NOTEXIST) {
  ret = iwl_mvm_rm_sta(mvm, vif, sta);
 } else {
  ret = -EIO;
 }
 out_unlock:
 mutex_unlock(&mvm->mutex);

 return ret;
}
