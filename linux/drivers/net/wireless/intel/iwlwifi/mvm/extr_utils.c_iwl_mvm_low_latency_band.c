
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm_low_latency_iter {int* result_per_band; } ;
struct iwl_mvm {int hw; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 int IEEE80211_IFACE_ITER_NORMAL ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int ,struct iwl_mvm_low_latency_iter*) ;
 int iwl_mvm_ll_iter ;

bool iwl_mvm_low_latency_band(struct iwl_mvm *mvm, enum nl80211_band band)
{
 struct iwl_mvm_low_latency_iter data = {};

 ieee80211_iterate_active_interfaces_atomic(
   mvm->hw, IEEE80211_IFACE_ITER_NORMAL,
   iwl_mvm_ll_iter, &data);

 return data.result_per_band[band];
}
