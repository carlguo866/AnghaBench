
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwl_mvm_vif {int uploaded; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_vif {int addr; } ;


 int EIO ;
 int FW_CTXT_ACTION_MODIFY ;
 scalar_t__ WARN_ONCE (int,char*,int ,int ) ;
 int ieee80211_vif_type_p2p (struct ieee80211_vif*) ;
 int iwl_mvm_mac_ctx_send (struct iwl_mvm*,struct ieee80211_vif*,int ,int,int const*) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;

int iwl_mvm_mac_ctxt_changed(struct iwl_mvm *mvm, struct ieee80211_vif *vif,
        bool force_assoc_off, const u8 *bssid_override)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);

 if (WARN_ONCE(!mvmvif->uploaded, "Changing inactive MAC %pM/%d\n",
        vif->addr, ieee80211_vif_type_p2p(vif)))
  return -EIO;

 return iwl_mvm_mac_ctx_send(mvm, vif, FW_CTXT_ACTION_MODIFY,
        force_assoc_off, bssid_override);
}
