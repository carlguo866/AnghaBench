
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef int uint32_t ;
struct dm_pp_display_configuration {int nb_pstate_switch_disable; int cpu_cc6_disable; int cpu_pstate_disable; int min_memory_clock_khz; int display_count; int line_time_in_us; TYPE_10__* disp_configs; int crtc_index; int disp_clk_khz; scalar_t__ avail_mclk_switch_time_in_disp_active_us; int avail_mclk_switch_time_us; int min_engine_clock_deep_sleep_khz; int min_engine_clock_khz; int min_dcfclock_khz; int cpu_pstate_separation_time; int all_displays_in_sync; } ;
struct TYPE_19__ {int nbp_state_change_enable; int cpuc_state_change_enable; int cpup_state_change_enable; int yclk_khz; int sclk_deep_sleep_khz; int sclk_khz; int blackout_recovery_time_us; int all_displays_in_sync; } ;
struct TYPE_20__ {TYPE_4__ dce; } ;
struct TYPE_21__ {TYPE_5__ bw; } ;
struct dc_state {int stream_count; TYPE_9__** streams; TYPE_6__ bw_ctx; struct dm_pp_display_configuration pp_display_cfg; } ;
struct dc_crtc_timing {int h_total; int pix_clk_100hz; } ;
struct dc {TYPE_12__* ctx; TYPE_11__* current_state; TYPE_8__* clk_mgr; TYPE_3__* bw_vbios; } ;
struct TYPE_24__ {struct dc_crtc_timing timing; } ;
struct TYPE_22__ {int dispclk_khz; } ;
struct TYPE_23__ {TYPE_7__ clks; } ;
struct TYPE_17__ {scalar_t__ value; } ;
struct TYPE_18__ {scalar_t__ memory_type; TYPE_2__ high_yclk; } ;
struct TYPE_16__ {int hw_internal_rev; } ;
struct TYPE_15__ {TYPE_1__ asic_id; } ;
struct TYPE_14__ {int pp_display_cfg; } ;
struct TYPE_13__ {int pipe_idx; } ;


 scalar_t__ ASICREV_IS_VEGA20_P (int ) ;
 int MEMORY_TYPE_HBM ;
 int MEMORY_TYPE_MULTIPLIER_CZ ;
 scalar_t__ bw_def_hbm ;
 int dce110_fill_display_configs (struct dc_state*,struct dm_pp_display_configuration*) ;
 int dce110_get_min_vblank_time_us (struct dc_state*) ;
 int determine_sclk_from_bounding_box (struct dc*,int ) ;
 scalar_t__ div64_s64 (scalar_t__,int) ;
 int dm_pp_apply_display_requirements (TYPE_12__*,struct dm_pp_display_configuration*) ;
 int max (int,int ) ;
 scalar_t__ memcmp (int *,struct dm_pp_display_configuration*,int) ;

void dce11_pplib_apply_display_requirements(
 struct dc *dc,
 struct dc_state *context)
{
 struct dm_pp_display_configuration *pp_display_cfg = &context->pp_display_cfg;
 int memory_type_multiplier = MEMORY_TYPE_MULTIPLIER_CZ;

 if (dc->bw_vbios && dc->bw_vbios->memory_type == bw_def_hbm)
  memory_type_multiplier = MEMORY_TYPE_HBM;

 pp_display_cfg->all_displays_in_sync =
  context->bw_ctx.bw.dce.all_displays_in_sync;
 pp_display_cfg->nb_pstate_switch_disable =
   context->bw_ctx.bw.dce.nbp_state_change_enable == 0;
 pp_display_cfg->cpu_cc6_disable =
   context->bw_ctx.bw.dce.cpuc_state_change_enable == 0;
 pp_display_cfg->cpu_pstate_disable =
   context->bw_ctx.bw.dce.cpup_state_change_enable == 0;
 pp_display_cfg->cpu_pstate_separation_time =
   context->bw_ctx.bw.dce.blackout_recovery_time_us;






 if (ASICREV_IS_VEGA20_P(dc->ctx->asic_id.hw_internal_rev) && (context->stream_count >= 2)) {
  pp_display_cfg->min_memory_clock_khz = max(pp_display_cfg->min_memory_clock_khz,
          (uint32_t) div64_s64(
           div64_s64(dc->bw_vbios->high_yclk.value,
              memory_type_multiplier), 10000));
 } else {
  pp_display_cfg->min_memory_clock_khz = context->bw_ctx.bw.dce.yclk_khz
   / memory_type_multiplier;
 }

 pp_display_cfg->min_engine_clock_khz = determine_sclk_from_bounding_box(
   dc,
   context->bw_ctx.bw.dce.sclk_khz);
 pp_display_cfg->min_dcfclock_khz = (context->stream_count > 4) ?
   pp_display_cfg->min_engine_clock_khz : 0;

 pp_display_cfg->min_engine_clock_deep_sleep_khz
   = context->bw_ctx.bw.dce.sclk_deep_sleep_khz;

 pp_display_cfg->avail_mclk_switch_time_us =
      dce110_get_min_vblank_time_us(context);

 pp_display_cfg->avail_mclk_switch_time_in_disp_active_us = 0;

 pp_display_cfg->disp_clk_khz = dc->clk_mgr->clks.dispclk_khz;

 dce110_fill_display_configs(context, pp_display_cfg);


 if (pp_display_cfg->display_count == 1) {
  const struct dc_crtc_timing *timing =
   &context->streams[0]->timing;

  pp_display_cfg->crtc_index =
   pp_display_cfg->disp_configs[0].pipe_idx;
  pp_display_cfg->line_time_in_us = timing->h_total * 10000 / timing->pix_clk_100hz;
 }

 if (memcmp(&dc->current_state->pp_display_cfg, pp_display_cfg, sizeof(*pp_display_cfg)) != 0)
  dm_pp_apply_display_requirements(dc->ctx, pp_display_cfg);
}
