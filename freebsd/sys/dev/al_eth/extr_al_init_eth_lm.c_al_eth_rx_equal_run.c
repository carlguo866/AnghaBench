
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct al_serdes_adv_rx_params {int high_freq_agc_boost; int low_freq_agc_gain; int dfe_fourth_tap_ctrl; int dfe_third_tap_ctrl; int dfe_secound_tap_ctrl; int dfe_first_tap_ctrl; int dfe_gain; int dfe_3db_freq; int dcgain; int override; scalar_t__ precal_code_sel; } ;
struct al_eth_lm_context {int lane; TYPE_1__* serdes_obj; } ;
struct TYPE_9__ {int (* rx_equalization ) (TYPE_1__*,int ) ;int (* rx_advanced_params_set ) (TYPE_1__*,int ,struct al_serdes_adv_rx_params*) ;int (* rx_advanced_params_get ) (TYPE_1__*,int ,struct al_serdes_adv_rx_params*) ;int (* dcgain_set ) (TYPE_1__*,int) ;} ;


 int AL_ETH_LM_EQ_ITERATIONS ;
 int AL_ETH_LM_MAX_DCGAIN ;
 int FALSE ;
 int TRUE ;
 int al_warn (char*) ;
 int lm_debug (char*,...) ;
 int stub1 (TYPE_1__*,int ,struct al_serdes_adv_rx_params*) ;
 int stub2 (TYPE_1__*,int) ;
 int stub3 (TYPE_1__*,int ) ;
 int stub4 (TYPE_1__*,int ,struct al_serdes_adv_rx_params*) ;
 int stub5 (TYPE_1__*,int) ;
 int stub6 (TYPE_1__*,int ) ;
 int stub7 (TYPE_1__*,int ,struct al_serdes_adv_rx_params*) ;
 int stub8 (TYPE_1__*,int ,struct al_serdes_adv_rx_params*) ;

__attribute__((used)) static int
al_eth_rx_equal_run(struct al_eth_lm_context *lm_context)
{
 struct al_serdes_adv_rx_params rx_params;
 int dcgain;
 int best_dcgain = -1;
 int i;
 int best_score = -1;
 int test_score = -1;

 rx_params.override = FALSE;
 lm_context->serdes_obj->rx_advanced_params_set(lm_context->serdes_obj,
       lm_context->lane, &rx_params);

 lm_debug("score | dcgain | dfe3db | dfegain | tap1 | tap2 | tap3 | "
     "tap4 | low freq | high freq\n");

 for (dcgain = 0; dcgain < AL_ETH_LM_MAX_DCGAIN; dcgain++) {
  lm_context->serdes_obj->dcgain_set(
     lm_context->serdes_obj,
     dcgain);

  test_score = lm_context->serdes_obj->rx_equalization(
     lm_context->serdes_obj,
     lm_context->lane);

  if (test_score < 0) {
   al_warn("serdes rx equalization failed on error\n");
   return (test_score);
  }

  if (test_score > best_score) {
   best_score = test_score;
   best_dcgain = dcgain;
  }

  lm_context->serdes_obj->rx_advanced_params_get(
     lm_context->serdes_obj,
     lm_context->lane,
     &rx_params);

  lm_debug("%6d|%8x|%8x|%9x|%6x|%6x|%6x|%6x|%10x|%10x|\n",
      test_score, rx_params.dcgain, rx_params.dfe_3db_freq,
      rx_params.dfe_gain, rx_params.dfe_first_tap_ctrl,
      rx_params.dfe_secound_tap_ctrl, rx_params.dfe_third_tap_ctrl,
      rx_params.dfe_fourth_tap_ctrl, rx_params.low_freq_agc_gain,
      rx_params.high_freq_agc_boost);
 }

 lm_context->serdes_obj->dcgain_set(
     lm_context->serdes_obj,
     best_dcgain);

 best_score = -1;
 for(i = 0; i < AL_ETH_LM_EQ_ITERATIONS; i++) {
  test_score = lm_context->serdes_obj->rx_equalization(
      lm_context->serdes_obj,
      lm_context->lane);

  if (test_score < 0) {
   al_warn("serdes rx equalization failed on error\n");
   return (test_score);
  }

  if (test_score > best_score) {
   best_score = test_score;
   lm_context->serdes_obj->rx_advanced_params_get(
      lm_context->serdes_obj,
      lm_context->lane,
      &rx_params);
  }
 }

 rx_params.precal_code_sel = 0;
 rx_params.override = TRUE;
 lm_context->serdes_obj->rx_advanced_params_set(
     lm_context->serdes_obj,
     lm_context->lane,
     &rx_params);

 lm_debug("-------------------- best dcgain %d ------------------------------------\n", best_dcgain);
 lm_debug("%6d|%8x|%8x|%9x|%6x|%6x|%6x|%6x|%10x|%10x|\n",
     best_score, rx_params.dcgain, rx_params.dfe_3db_freq,
     rx_params.dfe_gain, rx_params.dfe_first_tap_ctrl,
     rx_params.dfe_secound_tap_ctrl, rx_params.dfe_third_tap_ctrl,
     rx_params.dfe_fourth_tap_ctrl, rx_params.low_freq_agc_gain,
     rx_params.high_freq_agc_boost);

 return (0);
}
