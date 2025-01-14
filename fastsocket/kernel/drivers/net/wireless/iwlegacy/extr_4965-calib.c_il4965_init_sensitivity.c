
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct il_sensitivity_ranges {int nrg_th_cca; int barker_corr_th_min_mrc; int barker_corr_th_min; int nrg_th_ofdm; int nrg_th_cck; int auto_corr_min_cck_mrc; int auto_corr_min_ofdm_mrc_x1; int auto_corr_min_ofdm_x1; int auto_corr_min_ofdm_mrc; int auto_corr_min_ofdm; } ;
struct il_sensitivity_data {scalar_t__ last_fa_cnt_cck; scalar_t__ last_bad_plcp_cnt_cck; scalar_t__ last_fa_cnt_ofdm; scalar_t__ last_bad_plcp_cnt_ofdm; int nrg_th_cca; int barker_corr_th_min_mrc; int barker_corr_th_min; int nrg_th_ofdm; int nrg_th_cck; int auto_corr_cck_mrc; int auto_corr_cck; int auto_corr_ofdm_mrc_x1; int auto_corr_ofdm_x1; int auto_corr_ofdm_mrc; int auto_corr_ofdm; scalar_t__* nrg_silence_rssi; scalar_t__* nrg_value; scalar_t__ nrg_energy_idx; scalar_t__ nrg_silence_idx; scalar_t__ nrg_silence_ref; void* nrg_prev_state; void* nrg_curr_state; scalar_t__ num_in_cck_no_fa; } ;
struct TYPE_2__ {struct il_sensitivity_ranges* sens; } ;
struct il_priv {struct il_sensitivity_data sensitivity_data; scalar_t__ disable_sens_cal; TYPE_1__ hw_params; } ;


 int AUTO_CORR_CCK_MIN_VAL_DEF ;
 int D_CALIB (char*,...) ;
 void* IL_FA_TOO_MANY ;
 int NRG_NUM_PREV_STAT_L ;
 int il4965_sensitivity_write (struct il_priv*) ;
 int memset (struct il_sensitivity_data*,int ,int) ;

void
il4965_init_sensitivity(struct il_priv *il)
{
 int ret = 0;
 int i;
 struct il_sensitivity_data *data = ((void*)0);
 const struct il_sensitivity_ranges *ranges = il->hw_params.sens;

 if (il->disable_sens_cal)
  return;

 D_CALIB("Start il4965_init_sensitivity\n");


 data = &(il->sensitivity_data);

 if (ranges == ((void*)0))
  return;

 memset(data, 0, sizeof(struct il_sensitivity_data));

 data->num_in_cck_no_fa = 0;
 data->nrg_curr_state = IL_FA_TOO_MANY;
 data->nrg_prev_state = IL_FA_TOO_MANY;
 data->nrg_silence_ref = 0;
 data->nrg_silence_idx = 0;
 data->nrg_energy_idx = 0;

 for (i = 0; i < 10; i++)
  data->nrg_value[i] = 0;

 for (i = 0; i < NRG_NUM_PREV_STAT_L; i++)
  data->nrg_silence_rssi[i] = 0;

 data->auto_corr_ofdm = ranges->auto_corr_min_ofdm;
 data->auto_corr_ofdm_mrc = ranges->auto_corr_min_ofdm_mrc;
 data->auto_corr_ofdm_x1 = ranges->auto_corr_min_ofdm_x1;
 data->auto_corr_ofdm_mrc_x1 = ranges->auto_corr_min_ofdm_mrc_x1;
 data->auto_corr_cck = AUTO_CORR_CCK_MIN_VAL_DEF;
 data->auto_corr_cck_mrc = ranges->auto_corr_min_cck_mrc;
 data->nrg_th_cck = ranges->nrg_th_cck;
 data->nrg_th_ofdm = ranges->nrg_th_ofdm;
 data->barker_corr_th_min = ranges->barker_corr_th_min;
 data->barker_corr_th_min_mrc = ranges->barker_corr_th_min_mrc;
 data->nrg_th_cca = ranges->nrg_th_cca;

 data->last_bad_plcp_cnt_ofdm = 0;
 data->last_fa_cnt_ofdm = 0;
 data->last_bad_plcp_cnt_cck = 0;
 data->last_fa_cnt_cck = 0;

 ret |= il4965_sensitivity_write(il);
 D_CALIB("<<return 0x%X\n", ret);
}
