
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int mutex; } ;
struct ieee80211_hw {int dummy; } ;


 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 int __iwl_mvm_mac_start (struct iwl_mvm*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int iwl_mvm_mac_start(struct ieee80211_hw *hw)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 int ret;

 mutex_lock(&mvm->mutex);
 ret = __iwl_mvm_mac_start(mvm);
 mutex_unlock(&mvm->mutex);

 return ret;
}
