
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct rs_rate {scalar_t__ ant; } ;
struct iwl_scale_tbl_info {int column; struct rs_rate rate; } ;
struct iwl_mvm {TYPE_3__* nvm_data; TYPE_2__* fw; } ;
struct TYPE_4__ {int chains; } ;
struct iwl_lq_sta {size_t active_tbl; int lq; TYPE_1__ pers; struct iwl_scale_tbl_info* lq_info; int search_better_tbl; } ;
struct ieee80211_sta {int dummy; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_6__ {int valid_tx_ant; } ;
struct TYPE_5__ {int valid_tx_ant; } ;


 scalar_t__ ANT_A ;
 scalar_t__ ANT_B ;
 int ANT_INVALID ;
 int WARN_ONCE (int,char*,scalar_t__,int ,int ,int ) ;
 int iwl_mvm_send_lq_cmd (struct iwl_mvm*,int *) ;
 int rs_fill_lq_cmd (struct iwl_mvm*,struct ieee80211_sta*,struct iwl_lq_sta*,struct rs_rate*) ;
 int rs_get_column_from_rate (struct rs_rate*) ;
 int rs_get_initial_rate (struct iwl_mvm*,struct ieee80211_sta*,struct iwl_lq_sta*,int,struct rs_rate*) ;
 int rs_init_optimal_rate (struct iwl_mvm*,struct ieee80211_sta*,struct iwl_lq_sta*) ;
 size_t rs_search_tbl (size_t) ;
 int rs_set_expected_tpt_table (struct iwl_lq_sta*,struct iwl_scale_tbl_info*) ;

__attribute__((used)) static void rs_initialize_lq(struct iwl_mvm *mvm,
        struct ieee80211_sta *sta,
        struct iwl_lq_sta *lq_sta,
        enum nl80211_band band)
{
 struct iwl_scale_tbl_info *tbl;
 struct rs_rate *rate;
 u8 active_tbl = 0;

 if (!sta || !lq_sta)
  return;

 if (!lq_sta->search_better_tbl)
  active_tbl = lq_sta->active_tbl;
 else
  active_tbl = rs_search_tbl(lq_sta->active_tbl);

 tbl = &(lq_sta->lq_info[active_tbl]);
 rate = &tbl->rate;

 rs_get_initial_rate(mvm, sta, lq_sta, band, rate);
 rs_init_optimal_rate(mvm, sta, lq_sta);

 WARN_ONCE(rate->ant != ANT_A && rate->ant != ANT_B,
    "ant: 0x%x, chains 0x%x, fw tx ant: 0x%x, nvm tx ant: 0x%x\n",
    rate->ant, lq_sta->pers.chains, mvm->fw->valid_tx_ant,
    mvm->nvm_data ? mvm->nvm_data->valid_tx_ant : ANT_INVALID);

 tbl->column = rs_get_column_from_rate(rate);

 rs_set_expected_tpt_table(lq_sta, tbl);
 rs_fill_lq_cmd(mvm, sta, lq_sta, rate);

 iwl_mvm_send_lq_cmd(mvm, &lq_sta->lq);
}
