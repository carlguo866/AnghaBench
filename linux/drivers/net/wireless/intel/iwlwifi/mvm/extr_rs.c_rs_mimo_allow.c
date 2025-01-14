
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rs_tx_column {int dummy; } ;
struct rs_rate {int dummy; } ;
struct iwl_mvm {TYPE_2__* nvm_data; } ;
struct TYPE_3__ {int ht_supported; } ;
struct ieee80211_sta {scalar_t__ smps_mode; TYPE_1__ ht_cap; } ;
struct TYPE_4__ {scalar_t__ sku_cap_mimo_disabled; } ;


 scalar_t__ IEEE80211_SMPS_STATIC ;
 int iwl_mvm_bt_coex_is_mimo_allowed (struct iwl_mvm*,struct ieee80211_sta*) ;
 int iwl_mvm_get_valid_tx_ant (struct iwl_mvm*) ;
 int num_of_ant (int ) ;

__attribute__((used)) static bool rs_mimo_allow(struct iwl_mvm *mvm, struct ieee80211_sta *sta,
     struct rs_rate *rate,
     const struct rs_tx_column *next_col)
{
 if (!sta->ht_cap.ht_supported)
  return 0;

 if (sta->smps_mode == IEEE80211_SMPS_STATIC)
  return 0;

 if (num_of_ant(iwl_mvm_get_valid_tx_ant(mvm)) < 2)
  return 0;

 if (!iwl_mvm_bt_coex_is_mimo_allowed(mvm, sta))
  return 0;

 if (mvm->nvm_data->sku_cap_mimo_disabled)
  return 0;

 return 1;
}
