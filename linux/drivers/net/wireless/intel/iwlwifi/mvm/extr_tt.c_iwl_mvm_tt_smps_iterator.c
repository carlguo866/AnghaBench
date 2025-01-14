
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ dynamic_smps; } ;
struct iwl_mvm {TYPE_1__ thermal_throttle; int mutex; } ;
struct ieee80211_vif {scalar_t__ type; } ;
typedef enum ieee80211_smps_mode { ____Placeholder_ieee80211_smps_mode } ieee80211_smps_mode ;


 int IEEE80211_SMPS_AUTOMATIC ;
 int IEEE80211_SMPS_DYNAMIC ;
 int IWL_MVM_SMPS_REQ_TT ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int iwl_mvm_update_smps (struct iwl_mvm*,struct ieee80211_vif*,int ,int) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void iwl_mvm_tt_smps_iterator(void *_data, u8 *mac,
         struct ieee80211_vif *vif)
{
 struct iwl_mvm *mvm = _data;
 enum ieee80211_smps_mode smps_mode;

 lockdep_assert_held(&mvm->mutex);

 if (mvm->thermal_throttle.dynamic_smps)
  smps_mode = IEEE80211_SMPS_DYNAMIC;
 else
  smps_mode = IEEE80211_SMPS_AUTOMATIC;

 if (vif->type != NL80211_IFTYPE_STATION)
  return;

 iwl_mvm_update_smps(mvm, vif, IWL_MVM_SMPS_REQ_TT, smps_mode);
}
