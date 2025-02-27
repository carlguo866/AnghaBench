
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct resource_create_funcs {int dummy; } ;
struct irq_service_init_data {struct dc_context* ctx; } ;
struct TYPE_7__ {int pipe_count; int timing_generator_count; unsigned int clk_src_count; int ** sw_i2cs; int ** hw_i2cs; int ** engines; TYPE_3__* res_cap; int ** opps; int ** transforms; int ** ipps; int ** mis; int ** timing_generators; int irqs; int * abm; int * dmcu; int ** clock_sources; void* dp_clock_source; int underlay_pipe_index; int * funcs; } ;
struct dce110_resource_pool {TYPE_2__ base; } ;
struct TYPE_10__ {int hw_internal_rev; } ;
struct dc_context {TYPE_5__ asic_id; TYPE_4__* dc_bios; } ;
struct TYPE_6__ {int max_downscale_ratio; int i2c_speed_in_khz; int max_cursor_size; int dual_link_dvi; int psp_setup_panel_mode; int max_planes; int * planes; } ;
struct dc {struct dc_context* ctx; int bw_vbios; int bw_dceip; TYPE_1__ caps; int debug; } ;
struct TYPE_9__ {int * regs; } ;
struct TYPE_8__ {int num_timing_generator; unsigned int num_ddc; } ;


 int ASICREV_IS_VEGA20_P (int ) ;
 int BREAK_TO_DEBUGGER () ;
 int CLOCK_SOURCE_COMBO_PHY_PLL0 ;
 int CLOCK_SOURCE_COMBO_PHY_PLL1 ;
 int CLOCK_SOURCE_COMBO_PHY_PLL2 ;
 int CLOCK_SOURCE_COMBO_PHY_PLL3 ;
 int CLOCK_SOURCE_COMBO_PHY_PLL4 ;
 int CLOCK_SOURCE_COMBO_PHY_PLL5 ;
 int CLOCK_SOURCE_ID_DP_DTO ;
 size_t DCE120_CLK_SRC_PLL0 ;
 size_t DCE120_CLK_SRC_PLL1 ;
 size_t DCE120_CLK_SRC_PLL2 ;
 size_t DCE120_CLK_SRC_PLL3 ;
 size_t DCE120_CLK_SRC_PLL4 ;
 size_t DCE120_CLK_SRC_PLL5 ;
 unsigned int DCE120_CLK_SRC_TOTAL ;
 int NO_UNDERLAY_PIPE ;
 int abm_mask ;
 int abm_regs ;
 int abm_shift ;
 int bios_regs ;
 int bw_calcs_data_update_from_pplib (struct dc*) ;
 int bw_calcs_init (int ,int ,TYPE_5__) ;
 int * clk_src_regs ;
 int dal_irq_service_dce120_create (struct irq_service_init_data*) ;
 int * dce120_aux_engine_create (struct dc_context*,unsigned int) ;
 void* dce120_clock_source_create (struct dc_context*,TYPE_4__*,int ,int *,int) ;
 int dce120_hw_sequencer_create (struct dc*) ;
 int * dce120_i2c_hw_create (struct dc_context*,unsigned int) ;
 int * dce120_ipp_create (struct dc_context*,unsigned int) ;
 int * dce120_mem_input_create (struct dc_context*,unsigned int) ;
 int * dce120_opp_create (struct dc_context*,unsigned int) ;
 int dce120_res_pool_funcs ;
 int * dce120_tg_offsets ;
 int * dce120_timing_generator_create (struct dc_context*,unsigned int,int *) ;
 int * dce120_transform_create (struct dc_context*,unsigned int) ;
 struct resource_create_funcs dce121_res_create_funcs ;
 int * dce_abm_create (struct dc_context*,int *,int *,int *) ;
 int * dce_dmcu_create (struct dc_context*,int *,int *,int *) ;
 int debug_defaults ;
 int destruct (struct dce110_resource_pool*) ;
 int dm_error (char*,...) ;
 int dmcu_mask ;
 int dmcu_regs ;
 int dmcu_shift ;
 int plane_cap ;
 int read_pipe_fuses (struct dc_context*) ;
 TYPE_3__ res_cap ;
 struct resource_create_funcs res_create_funcs ;
 int resource_construct (int ,struct dc*,TYPE_2__*,struct resource_create_funcs const*) ;

__attribute__((used)) static bool construct(
 uint8_t num_virtual_links,
 struct dc *dc,
 struct dce110_resource_pool *pool)
{
 unsigned int i;
 int j;
 struct dc_context *ctx = dc->ctx;
 struct irq_service_init_data irq_init_data;
 static const struct resource_create_funcs *res_funcs;
 bool is_vg20 = ASICREV_IS_VEGA20_P(ctx->asic_id.hw_internal_rev);
 uint32_t pipe_fuses;

 ctx->dc_bios->regs = &bios_regs;

 pool->base.res_cap = &res_cap;
 pool->base.funcs = &dce120_res_pool_funcs;


 pool->base.pipe_count = res_cap.num_timing_generator;
 pool->base.timing_generator_count = pool->base.res_cap->num_timing_generator;
 pool->base.underlay_pipe_index = NO_UNDERLAY_PIPE;

 dc->caps.max_downscale_ratio = 200;
 dc->caps.i2c_speed_in_khz = 100;
 dc->caps.max_cursor_size = 128;
 dc->caps.dual_link_dvi = 1;
 dc->caps.psp_setup_panel_mode = 1;

 dc->debug = debug_defaults;





 pool->base.clock_sources[DCE120_CLK_SRC_PLL0] =
   dce120_clock_source_create(ctx, ctx->dc_bios,
    CLOCK_SOURCE_COMBO_PHY_PLL0,
    &clk_src_regs[0], 0);
 pool->base.clock_sources[DCE120_CLK_SRC_PLL1] =
   dce120_clock_source_create(ctx, ctx->dc_bios,
    CLOCK_SOURCE_COMBO_PHY_PLL1,
    &clk_src_regs[1], 0);
 pool->base.clock_sources[DCE120_CLK_SRC_PLL2] =
   dce120_clock_source_create(ctx, ctx->dc_bios,
    CLOCK_SOURCE_COMBO_PHY_PLL2,
    &clk_src_regs[2], 0);
 pool->base.clock_sources[DCE120_CLK_SRC_PLL3] =
   dce120_clock_source_create(ctx, ctx->dc_bios,
    CLOCK_SOURCE_COMBO_PHY_PLL3,
    &clk_src_regs[3], 0);
 pool->base.clock_sources[DCE120_CLK_SRC_PLL4] =
   dce120_clock_source_create(ctx, ctx->dc_bios,
    CLOCK_SOURCE_COMBO_PHY_PLL4,
    &clk_src_regs[4], 0);
 pool->base.clock_sources[DCE120_CLK_SRC_PLL5] =
   dce120_clock_source_create(ctx, ctx->dc_bios,
    CLOCK_SOURCE_COMBO_PHY_PLL5,
    &clk_src_regs[5], 0);
 pool->base.clk_src_count = DCE120_CLK_SRC_TOTAL;

 pool->base.dp_clock_source =
   dce120_clock_source_create(ctx, ctx->dc_bios,
    CLOCK_SOURCE_ID_DP_DTO,
    &clk_src_regs[0], 1);

 for (i = 0; i < pool->base.clk_src_count; i++) {
  if (pool->base.clock_sources[i] == ((void*)0)) {
   dm_error("DC: failed to create clock sources!\n");
   BREAK_TO_DEBUGGER();
   goto clk_src_create_fail;
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


 irq_init_data.ctx = dc->ctx;
 pool->base.irqs = dal_irq_service_dce120_create(&irq_init_data);
 if (!pool->base.irqs)
  goto irqs_create_fail;


 if (is_vg20)
  pipe_fuses = read_pipe_fuses(ctx);


 j = 0;
 for (i = 0; i < pool->base.pipe_count; i++) {
  if (is_vg20) {
   if ((pipe_fuses & (1 << i)) != 0) {
    dm_error("DC: skip invalid pipe %d!\n", i);
    continue;
   }
  }

  pool->base.timing_generators[j] =
    dce120_timing_generator_create(
     ctx,
     i,
     &dce120_tg_offsets[i]);
  if (pool->base.timing_generators[j] == ((void*)0)) {
   BREAK_TO_DEBUGGER();
   dm_error("DC: failed to create tg!\n");
   goto controller_create_fail;
  }

  pool->base.mis[j] = dce120_mem_input_create(ctx, i);

  if (pool->base.mis[j] == ((void*)0)) {
   BREAK_TO_DEBUGGER();
   dm_error(
    "DC: failed to create memory input!\n");
   goto controller_create_fail;
  }

  pool->base.ipps[j] = dce120_ipp_create(ctx, i);
  if (pool->base.ipps[i] == ((void*)0)) {
   BREAK_TO_DEBUGGER();
   dm_error(
    "DC: failed to create input pixel processor!\n");
   goto controller_create_fail;
  }

  pool->base.transforms[j] = dce120_transform_create(ctx, i);
  if (pool->base.transforms[i] == ((void*)0)) {
   BREAK_TO_DEBUGGER();
   dm_error(
    "DC: failed to create transform!\n");
   goto res_create_fail;
  }

  pool->base.opps[j] = dce120_opp_create(
   ctx,
   i);
  if (pool->base.opps[j] == ((void*)0)) {
   BREAK_TO_DEBUGGER();
   dm_error(
    "DC: failed to create output pixel processor!\n");
  }


  j++;
 }

 for (i = 0; i < pool->base.res_cap->num_ddc; i++) {
  pool->base.engines[i] = dce120_aux_engine_create(ctx, i);
  if (pool->base.engines[i] == ((void*)0)) {
   BREAK_TO_DEBUGGER();
   dm_error(
    "DC:failed to create aux engine!!\n");
   goto res_create_fail;
  }
  pool->base.hw_i2cs[i] = dce120_i2c_hw_create(ctx, i);
  if (pool->base.hw_i2cs[i] == ((void*)0)) {
   BREAK_TO_DEBUGGER();
   dm_error(
    "DC:failed to create i2c engine!!\n");
   goto res_create_fail;
  }
  pool->base.sw_i2cs[i] = ((void*)0);
 }


 pool->base.pipe_count = j;
 pool->base.timing_generator_count = j;

 if (is_vg20)
  res_funcs = &dce121_res_create_funcs;
 else
  res_funcs = &res_create_funcs;

 if (!resource_construct(num_virtual_links, dc, &pool->base, res_funcs))
  goto res_create_fail;


 if (!dce120_hw_sequencer_create(dc))
  goto controller_create_fail;

 dc->caps.max_planes = pool->base.pipe_count;

 for (i = 0; i < dc->caps.max_planes; ++i)
  dc->caps.planes[i] = plane_cap;

 bw_calcs_init(dc->bw_dceip, dc->bw_vbios, dc->ctx->asic_id);

 bw_calcs_data_update_from_pplib(dc);

 return 1;

irqs_create_fail:
controller_create_fail:
clk_src_create_fail:
res_create_fail:

 destruct(pool);

 return 0;
}
