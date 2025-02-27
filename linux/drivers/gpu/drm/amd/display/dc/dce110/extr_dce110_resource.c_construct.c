
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct irq_service_init_data {struct dc_context* ctx; } ;
struct hw_asic_id {int dummy; } ;
struct TYPE_10__ {unsigned int pipe_count; unsigned int underlay_pipe_index; unsigned int timing_generator_count; int clk_src_count; int ** sw_i2cs; int ** hw_i2cs; int ** engines; TYPE_6__* res_cap; int ** opps; int ** transforms; int ** ipps; int ** mis; int ** timing_generators; int irqs; int * abm; int * dmcu; int ** clock_sources; int * dp_clock_source; int * funcs; } ;
struct dce110_resource_pool {TYPE_4__ base; } ;
struct dc_context {int asic_id; struct dc_bios* dc_bios; } ;
struct TYPE_9__ {scalar_t__ external_clock_source_frequency_for_dp; } ;
struct dc_bios {TYPE_3__ fw_info; scalar_t__ fw_info_valid; int * regs; } ;
struct TYPE_8__ {int max_downscale_ratio; int i2c_speed_in_khz; int max_cursor_size; int is_apu; unsigned int max_planes; int * planes; } ;
struct TYPE_7__ {scalar_t__ fbc_support; } ;
struct dc {struct dc_context* ctx; int bw_vbios; int bw_dceip; TYPE_2__ caps; int fbc_compressor; TYPE_1__ config; } ;
struct TYPE_11__ {unsigned int num_timing_generator; unsigned int num_ddc; } ;


 int BREAK_TO_DEBUGGER () ;
 int CLOCK_SOURCE_ID_EXTERNAL ;
 int CLOCK_SOURCE_ID_PLL0 ;
 int CLOCK_SOURCE_ID_PLL1 ;
 int abm_mask ;
 int abm_regs ;
 int abm_shift ;
 int bios_regs ;
 int bw_calcs_data_update_from_pplib (struct dc*) ;
 int bw_calcs_init (int ,int ,int ) ;
 int * clk_src_regs ;
 int dal_irq_service_dce110_create (struct irq_service_init_data*) ;
 int * dce110_aux_engine_create (struct dc_context*,unsigned int) ;
 void* dce110_clock_source_create (struct dc_context*,struct dc_bios*,int ,int *,int) ;
 int dce110_compressor_create (struct dc_context*) ;
 int dce110_hw_sequencer_construct (struct dc*) ;
 int * dce110_i2c_hw_create (struct dc_context*,unsigned int) ;
 int * dce110_ipp_create (struct dc_context*,unsigned int) ;
 int * dce110_mem_input_create (struct dc_context*,unsigned int) ;
 int * dce110_opp_create (struct dc_context*,unsigned int) ;
 int dce110_res_pool_funcs ;
 TYPE_6__* dce110_resource_cap (int *) ;
 int * dce110_tg_offsets ;
 int * dce110_timing_generator_create (struct dc_context*,unsigned int,int *) ;
 int * dce110_transform_create (struct dc_context*,unsigned int) ;
 int * dce_abm_create (struct dc_context*,int *,int *,int *) ;
 int * dce_dmcu_create (struct dc_context*,int *,int *,int *) ;
 int destruct (struct dce110_resource_pool*) ;
 int dm_error (char*) ;
 int dmcu_mask ;
 int dmcu_regs ;
 int dmcu_shift ;
 int plane_cap ;
 int res_create_funcs ;
 int resource_construct (int ,struct dc*,TYPE_4__*,int *) ;
 int underlay_create (struct dc_context*,TYPE_4__*) ;
 int underlay_plane_cap ;

__attribute__((used)) static bool construct(
 uint8_t num_virtual_links,
 struct dc *dc,
 struct dce110_resource_pool *pool,
 struct hw_asic_id asic_id)
{
 unsigned int i;
 struct dc_context *ctx = dc->ctx;
 struct dc_bios *bp;

 ctx->dc_bios->regs = &bios_regs;

 pool->base.res_cap = dce110_resource_cap(&ctx->asic_id);
 pool->base.funcs = &dce110_res_pool_funcs;





 pool->base.pipe_count = pool->base.res_cap->num_timing_generator;
 pool->base.underlay_pipe_index = pool->base.pipe_count;
 pool->base.timing_generator_count = pool->base.res_cap->num_timing_generator;
 dc->caps.max_downscale_ratio = 150;
 dc->caps.i2c_speed_in_khz = 100;
 dc->caps.max_cursor_size = 128;
 dc->caps.is_apu = 1;





 bp = ctx->dc_bios;

 if (bp->fw_info_valid && bp->fw_info.external_clock_source_frequency_for_dp != 0) {
  pool->base.dp_clock_source =
    dce110_clock_source_create(ctx, bp, CLOCK_SOURCE_ID_EXTERNAL, ((void*)0), 1);

  pool->base.clock_sources[0] =
    dce110_clock_source_create(ctx, bp, CLOCK_SOURCE_ID_PLL0,
      &clk_src_regs[0], 0);
  pool->base.clock_sources[1] =
    dce110_clock_source_create(ctx, bp, CLOCK_SOURCE_ID_PLL1,
      &clk_src_regs[1], 0);

  pool->base.clk_src_count = 2;


 }

 if (pool->base.dp_clock_source == ((void*)0)) {
  dm_error("DC: failed to create dp clock source!\n");
  BREAK_TO_DEBUGGER();
  goto res_create_fail;
 }

 for (i = 0; i < pool->base.clk_src_count; i++) {
  if (pool->base.clock_sources[i] == ((void*)0)) {
   dm_error("DC: failed to create clock sources!\n");
   BREAK_TO_DEBUGGER();
   goto res_create_fail;
  }
 }

 pool->base.dmcu = dce_dmcu_create(ctx,
   &dmcu_regs,
   &dmcu_shift,
   &dmcu_mask);
 if (pool->base.dmcu == ((void*)0)) {
  dm_error("DC: failed to create dmcu!\n");
  BREAK_TO_DEBUGGER();
  goto res_create_fail;
 }

 pool->base.abm = dce_abm_create(ctx,
   &abm_regs,
   &abm_shift,
   &abm_mask);
 if (pool->base.abm == ((void*)0)) {
  dm_error("DC: failed to create abm!\n");
  BREAK_TO_DEBUGGER();
  goto res_create_fail;
 }

 {
  struct irq_service_init_data init_data;
  init_data.ctx = dc->ctx;
  pool->base.irqs = dal_irq_service_dce110_create(&init_data);
  if (!pool->base.irqs)
   goto res_create_fail;
 }

 for (i = 0; i < pool->base.pipe_count; i++) {
  pool->base.timing_generators[i] = dce110_timing_generator_create(
    ctx, i, &dce110_tg_offsets[i]);
  if (pool->base.timing_generators[i] == ((void*)0)) {
   BREAK_TO_DEBUGGER();
   dm_error("DC: failed to create tg!\n");
   goto res_create_fail;
  }

  pool->base.mis[i] = dce110_mem_input_create(ctx, i);
  if (pool->base.mis[i] == ((void*)0)) {
   BREAK_TO_DEBUGGER();
   dm_error(
    "DC: failed to create memory input!\n");
   goto res_create_fail;
  }

  pool->base.ipps[i] = dce110_ipp_create(ctx, i);
  if (pool->base.ipps[i] == ((void*)0)) {
   BREAK_TO_DEBUGGER();
   dm_error(
    "DC: failed to create input pixel processor!\n");
   goto res_create_fail;
  }

  pool->base.transforms[i] = dce110_transform_create(ctx, i);
  if (pool->base.transforms[i] == ((void*)0)) {
   BREAK_TO_DEBUGGER();
   dm_error(
    "DC: failed to create transform!\n");
   goto res_create_fail;
  }

  pool->base.opps[i] = dce110_opp_create(ctx, i);
  if (pool->base.opps[i] == ((void*)0)) {
   BREAK_TO_DEBUGGER();
   dm_error(
    "DC: failed to create output pixel processor!\n");
   goto res_create_fail;
  }
 }

 for (i = 0; i < pool->base.res_cap->num_ddc; i++) {
  pool->base.engines[i] = dce110_aux_engine_create(ctx, i);
  if (pool->base.engines[i] == ((void*)0)) {
   BREAK_TO_DEBUGGER();
   dm_error(
    "DC:failed to create aux engine!!\n");
   goto res_create_fail;
  }
  pool->base.hw_i2cs[i] = dce110_i2c_hw_create(ctx, i);
  if (pool->base.hw_i2cs[i] == ((void*)0)) {
   BREAK_TO_DEBUGGER();
   dm_error(
    "DC:failed to create i2c engine!!\n");
   goto res_create_fail;
  }
  pool->base.sw_i2cs[i] = ((void*)0);
 }

 if (dc->config.fbc_support)
  dc->fbc_compressor = dce110_compressor_create(ctx);

 if (!underlay_create(ctx, &pool->base))
  goto res_create_fail;

 if (!resource_construct(num_virtual_links, dc, &pool->base,
   &res_create_funcs))
  goto res_create_fail;


 dce110_hw_sequencer_construct(dc);

 dc->caps.max_planes = pool->base.pipe_count;

 for (i = 0; i < pool->base.underlay_pipe_index; ++i)
  dc->caps.planes[i] = plane_cap;

 dc->caps.planes[pool->base.underlay_pipe_index] = underlay_plane_cap;

 bw_calcs_init(dc->bw_dceip, dc->bw_vbios, dc->ctx->asic_id);

 bw_calcs_data_update_from_pplib(dc);

 return 1;

res_create_fail:
 destruct(pool);
 return 0;
}
