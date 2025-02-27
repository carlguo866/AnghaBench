
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_5__ {scalar_t__ state; } ;
struct il_tid_data {TYPE_2__ agg; } ;
struct il_scale_tbl_info {int* expected_tpt; scalar_t__ max_search; int current_rate; void* lq_type; struct il_rate_scale_data* win; } ;
struct il_rate_scale_data {scalar_t__ counter; int average_tpt; int success_ratio; int success_counter; } ;
struct il_priv {TYPE_1__* stations; struct ieee80211_hw* hw; } ;
struct TYPE_6__ {size_t sta_id; } ;
struct il_lq_sta {int supp_rates; size_t band; int tx_agg_tid_en; int is_agg; int active_tbl; int is_green; int last_txrate_idx; int max_rate_idx; int last_tpt; int enable_counter; scalar_t__ action_counter; TYPE_3__ lq; struct il_scale_tbl_info* lq_info; int stay_in_tbl; scalar_t__ search_better_tbl; } ;
struct ieee80211_tx_info {int flags; } ;
struct ieee80211_sta {int* supp_rates; } ;
struct ieee80211_conf {int dummy; } ;
struct ieee80211_hw {struct ieee80211_conf conf; } ;
struct ieee80211_hdr {int frame_control; } ;
typedef int s8 ;
typedef int s32 ;
struct TYPE_4__ {struct il_tid_data* tid; } ;


 int CMD_ASYNC ;
 int D_RATE (char*,...) ;
 size_t IEEE80211_BAND_5GHZ ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_NO_ACK ;
 scalar_t__ IL_AGG_OFF ;
 int IL_AGG_TPT_THREHOLD ;
 int IL_ERR (char*) ;
 int IL_FIRST_OFDM_RATE ;
 int IL_INVALID_VALUE ;
 void* LQ_NONE ;
 int MAX_TID_COUNT ;
 int RATE_COUNT ;
 int RATE_DECREASE_TH ;
 int RATE_HIGH_TH ;
 int RATE_INCREASE_TH ;
 int RATE_INVALID ;
 scalar_t__ RATE_MIN_FAILURE_TH ;
 int RATE_MIN_SUCCESS_TH ;
 int conf_is_ht (struct ieee80211_conf*) ;
 int ieee80211_is_data (int ) ;
 int il4965_hwrate_to_plcp_idx (int ) ;
 int il4965_rate_n_flags_from_tbl (struct il_priv*,struct il_scale_tbl_info*,int,int) ;
 int il4965_rs_fill_link_cmd (struct il_priv*,struct il_lq_sta*,int ) ;
 int il4965_rs_get_adjacent_rate (struct il_priv*,int,int,void*) ;
 int il4965_rs_get_supported_rates (struct il_lq_sta*,struct ieee80211_hdr*,void*) ;
 int il4965_rs_move_legacy_other (struct il_priv*,struct il_lq_sta*,struct ieee80211_conf*,struct ieee80211_sta*,int) ;
 int il4965_rs_move_mimo2_to_other (struct il_priv*,struct il_lq_sta*,struct ieee80211_conf*,struct ieee80211_sta*,int) ;
 int il4965_rs_move_siso_to_other (struct il_priv*,struct il_lq_sta*,struct ieee80211_conf*,struct ieee80211_sta*,int) ;
 int il4965_rs_rate_scale_clear_win (struct il_rate_scale_data*) ;
 int il4965_rs_set_stay_in_table (struct il_priv*,int,struct il_lq_sta*) ;
 int il4965_rs_stay_in_table (struct il_lq_sta*,int) ;
 int il4965_rs_tl_add_packet (struct il_lq_sta*,struct ieee80211_hdr*) ;
 int il4965_rs_tl_turn_on_agg (struct il_priv*,int,struct il_lq_sta*,struct ieee80211_sta*) ;
 int il4965_rs_update_rate_tbl (struct il_priv*,struct il_lq_sta*,struct il_scale_tbl_info*,int,int) ;
 int il4965_rs_use_green (struct il_priv*,struct ieee80211_sta*) ;
 int il_send_lq_cmd (struct il_priv*,TYPE_3__*,int ,int) ;
 scalar_t__ is_legacy (void*) ;
 scalar_t__ is_siso (void*) ;

__attribute__((used)) static void
il4965_rs_rate_scale_perform(struct il_priv *il, struct sk_buff *skb,
        struct ieee80211_sta *sta,
        struct il_lq_sta *lq_sta)
{
 struct ieee80211_hw *hw = il->hw;
 struct ieee80211_conf *conf = &hw->conf;
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 int low = RATE_INVALID;
 int high = RATE_INVALID;
 int idx;
 int i;
 struct il_rate_scale_data *win = ((void*)0);
 int current_tpt = IL_INVALID_VALUE;
 int low_tpt = IL_INVALID_VALUE;
 int high_tpt = IL_INVALID_VALUE;
 u32 fail_count;
 s8 scale_action = 0;
 u16 rate_mask;
 u8 update_lq = 0;
 struct il_scale_tbl_info *tbl, *tbl1;
 u16 rate_scale_idx_msk = 0;
 u8 is_green = 0;
 u8 active_tbl = 0;
 u8 done_search = 0;
 u16 high_low;
 s32 sr;
 u8 tid = MAX_TID_COUNT;
 struct il_tid_data *tid_data;

 D_RATE("rate scale calculate new rate for skb\n");



 if (!ieee80211_is_data(hdr->frame_control) ||
     (info->flags & IEEE80211_TX_CTL_NO_ACK))
  return;

 lq_sta->supp_rates = sta->supp_rates[lq_sta->band];

 tid = il4965_rs_tl_add_packet(lq_sta, hdr);
 if (tid != MAX_TID_COUNT && (lq_sta->tx_agg_tid_en & (1 << tid))) {
  tid_data = &il->stations[lq_sta->lq.sta_id].tid[tid];
  if (tid_data->agg.state == IL_AGG_OFF)
   lq_sta->is_agg = 0;
  else
   lq_sta->is_agg = 1;
 } else
  lq_sta->is_agg = 0;






 if (!lq_sta->search_better_tbl)
  active_tbl = lq_sta->active_tbl;
 else
  active_tbl = 1 - lq_sta->active_tbl;

 tbl = &(lq_sta->lq_info[active_tbl]);
 if (is_legacy(tbl->lq_type))
  lq_sta->is_green = 0;
 else
  lq_sta->is_green = il4965_rs_use_green(il, sta);
 is_green = lq_sta->is_green;


 idx = lq_sta->last_txrate_idx;

 D_RATE("Rate scale idx %d for type %d\n", idx, tbl->lq_type);


 rate_mask = il4965_rs_get_supported_rates(lq_sta, hdr, tbl->lq_type);

 D_RATE("mask 0x%04X\n", rate_mask);


 if (is_legacy(tbl->lq_type)) {
  if (lq_sta->band == IEEE80211_BAND_5GHZ)

   rate_scale_idx_msk =
       (u16) (rate_mask &
       (lq_sta->supp_rates << IL_FIRST_OFDM_RATE));
  else
   rate_scale_idx_msk =
       (u16) (rate_mask & lq_sta->supp_rates);

 } else
  rate_scale_idx_msk = rate_mask;

 if (!rate_scale_idx_msk)
  rate_scale_idx_msk = rate_mask;

 if (!((1 << idx) & rate_scale_idx_msk)) {
  IL_ERR("Current Rate is not valid\n");
  if (lq_sta->search_better_tbl) {

   tbl->lq_type = LQ_NONE;
   lq_sta->search_better_tbl = 0;
   tbl = &(lq_sta->lq_info[lq_sta->active_tbl]);

   idx = il4965_hwrate_to_plcp_idx(tbl->current_rate);
   il4965_rs_update_rate_tbl(il, lq_sta, tbl, idx,
            is_green);
  }
  return;
 }


 if (!tbl->expected_tpt) {
  IL_ERR("tbl->expected_tpt is NULL\n");
  return;
 }


 if (lq_sta->max_rate_idx != -1 && lq_sta->max_rate_idx < idx) {
  idx = lq_sta->max_rate_idx;
  update_lq = 1;
  win = &(tbl->win[idx]);
  goto lq_update;
 }

 win = &(tbl->win[idx]);
 fail_count = win->counter - win->success_counter;
 if (fail_count < RATE_MIN_FAILURE_TH &&
     win->success_counter < RATE_MIN_SUCCESS_TH) {
  D_RATE("LQ: still below TH. succ=%d total=%d " "for idx %d\n",
         win->success_counter, win->counter, idx);


  win->average_tpt = IL_INVALID_VALUE;



  il4965_rs_stay_in_table(lq_sta, 0);

  goto out;
 }


 if (win->average_tpt !=
     ((win->success_ratio * tbl->expected_tpt[idx] + 64) / 128)) {
  IL_ERR("expected_tpt should have been calculated by now\n");
  win->average_tpt =
      ((win->success_ratio * tbl->expected_tpt[idx] + 64) / 128);
 }


 if (lq_sta->search_better_tbl) {



  if (win->average_tpt > lq_sta->last_tpt) {

   D_RATE("LQ: SWITCHING TO NEW TBL "
          "suc=%d cur-tpt=%d old-tpt=%d\n",
          win->success_ratio, win->average_tpt,
          lq_sta->last_tpt);

   if (!is_legacy(tbl->lq_type))
    lq_sta->enable_counter = 1;


   lq_sta->active_tbl = active_tbl;
   current_tpt = win->average_tpt;


  } else {

   D_RATE("LQ: GOING BACK TO THE OLD TBL "
          "suc=%d cur-tpt=%d old-tpt=%d\n",
          win->success_ratio, win->average_tpt,
          lq_sta->last_tpt);


   tbl->lq_type = LQ_NONE;


   active_tbl = lq_sta->active_tbl;
   tbl = &(lq_sta->lq_info[active_tbl]);


   idx = il4965_hwrate_to_plcp_idx(tbl->current_rate);
   current_tpt = lq_sta->last_tpt;


   update_lq = 1;
  }



  lq_sta->search_better_tbl = 0;
  done_search = 1;
  goto lq_update;
 }



 high_low =
     il4965_rs_get_adjacent_rate(il, idx, rate_scale_idx_msk,
     tbl->lq_type);
 low = high_low & 0xff;
 high = (high_low >> 8) & 0xff;


 if (lq_sta->max_rate_idx != -1 && lq_sta->max_rate_idx < high)
  high = RATE_INVALID;

 sr = win->success_ratio;


 current_tpt = win->average_tpt;
 if (low != RATE_INVALID)
  low_tpt = tbl->win[low].average_tpt;
 if (high != RATE_INVALID)
  high_tpt = tbl->win[high].average_tpt;

 scale_action = 0;


 if (sr <= RATE_DECREASE_TH || current_tpt == 0) {
  D_RATE("decrease rate because of low success_ratio\n");
  scale_action = -1;


 } else if (low_tpt == IL_INVALID_VALUE && high_tpt == IL_INVALID_VALUE) {

  if (high != RATE_INVALID && sr >= RATE_INCREASE_TH)
   scale_action = 1;
  else if (low != RATE_INVALID)
   scale_action = 0;
 }



 else if (low_tpt != IL_INVALID_VALUE && high_tpt != IL_INVALID_VALUE &&
   low_tpt < current_tpt && high_tpt < current_tpt)
  scale_action = 0;



 else {

  if (high_tpt != IL_INVALID_VALUE) {

   if (high_tpt > current_tpt && sr >= RATE_INCREASE_TH)
    scale_action = 1;
   else
    scale_action = 0;


  } else if (low_tpt != IL_INVALID_VALUE) {

   if (low_tpt > current_tpt) {
    D_RATE("decrease rate because of low tpt\n");
    scale_action = -1;
   } else if (sr >= RATE_INCREASE_TH) {
    scale_action = 1;
   }
  }
 }



 if (scale_action == -1 && low != RATE_INVALID &&
     (sr > RATE_HIGH_TH || current_tpt > 100 * tbl->expected_tpt[low]))
  scale_action = 0;

 switch (scale_action) {
 case -1:

  if (low != RATE_INVALID) {
   update_lq = 1;
   idx = low;
  }

  break;
 case 1:

  if (high != RATE_INVALID) {
   update_lq = 1;
   idx = high;
  }

  break;
 case 0:

 default:
  break;
 }

 D_RATE("choose rate scale idx %d action %d low %d " "high %d type %d\n",
        idx, scale_action, low, high, tbl->lq_type);

lq_update:

 if (update_lq)
  il4965_rs_update_rate_tbl(il, lq_sta, tbl, idx, is_green);



 il4965_rs_stay_in_table(lq_sta, 0);







 if (!update_lq && !done_search && !lq_sta->stay_in_tbl && win->counter) {

  lq_sta->last_tpt = current_tpt;



  if (is_legacy(tbl->lq_type))
   il4965_rs_move_legacy_other(il, lq_sta, conf, sta, idx);
  else if (is_siso(tbl->lq_type))
   il4965_rs_move_siso_to_other(il, lq_sta, conf, sta,
           idx);
  else
   il4965_rs_move_mimo2_to_other(il, lq_sta, conf, sta,
            idx);


  if (lq_sta->search_better_tbl) {

   tbl = &(lq_sta->lq_info[(1 - lq_sta->active_tbl)]);
   for (i = 0; i < RATE_COUNT; i++)
    il4965_rs_rate_scale_clear_win(&(tbl->win[i]));


   idx = il4965_hwrate_to_plcp_idx(tbl->current_rate);

   D_RATE("Switch current  mcs: %X idx: %d\n",
          tbl->current_rate, idx);
   il4965_rs_fill_link_cmd(il, lq_sta, tbl->current_rate);
   il_send_lq_cmd(il, &lq_sta->lq, CMD_ASYNC, 0);
  } else
   done_search = 1;
 }

 if (done_search && !lq_sta->stay_in_tbl) {





  tbl1 = &(lq_sta->lq_info[lq_sta->active_tbl]);
  if (is_legacy(tbl1->lq_type) && !conf_is_ht(conf) &&
      lq_sta->action_counter > tbl1->max_search) {
   D_RATE("LQ: STAY in legacy table\n");
   il4965_rs_set_stay_in_table(il, 1, lq_sta);
  }




  if (lq_sta->enable_counter &&
      lq_sta->action_counter >= tbl1->max_search) {
   if (lq_sta->last_tpt > IL_AGG_TPT_THREHOLD &&
       (lq_sta->tx_agg_tid_en & (1 << tid)) &&
       tid != MAX_TID_COUNT) {
    tid_data =
        &il->stations[lq_sta->lq.sta_id].tid[tid];
    if (tid_data->agg.state == IL_AGG_OFF) {
     D_RATE("try to aggregate tid %d\n",
            tid);
     il4965_rs_tl_turn_on_agg(il, tid,
         lq_sta, sta);
    }
   }
   il4965_rs_set_stay_in_table(il, 0, lq_sta);
  }
 }

out:
 tbl->current_rate =
     il4965_rate_n_flags_from_tbl(il, tbl, idx, is_green);
 i = idx;
 lq_sta->last_txrate_idx = i;
}
