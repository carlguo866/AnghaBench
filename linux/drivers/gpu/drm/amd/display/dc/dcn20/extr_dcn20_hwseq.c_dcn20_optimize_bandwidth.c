
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct hubbub {TYPE_4__* funcs; } ;
struct TYPE_13__ {int watermarks; } ;
struct TYPE_14__ {TYPE_5__ dcn; } ;
struct TYPE_15__ {TYPE_6__ bw; } ;
struct dc_state {TYPE_7__ bw_ctx; } ;
struct dc {TYPE_8__* clk_mgr; TYPE_3__* res_pool; } ;
struct TYPE_16__ {TYPE_2__* funcs; } ;
struct TYPE_12__ {int (* program_watermarks ) (struct hubbub*,int *,int,int) ;} ;
struct TYPE_9__ {int dchub_ref_clock_inKhz; } ;
struct TYPE_11__ {TYPE_1__ ref_clocks; struct hubbub* hubbub; } ;
struct TYPE_10__ {int (* update_clocks ) (TYPE_8__*,struct dc_state*,int) ;} ;


 int stub1 (struct hubbub*,int *,int,int) ;
 int stub2 (TYPE_8__*,struct dc_state*,int) ;

void dcn20_optimize_bandwidth(
  struct dc *dc,
  struct dc_state *context)
{
 struct hubbub *hubbub = dc->res_pool->hubbub;


 hubbub->funcs->program_watermarks(hubbub,
     &context->bw_ctx.bw.dcn.watermarks,
     dc->res_pool->ref_clocks.dchub_ref_clock_inKhz / 1000,
     1);

 dc->clk_mgr->funcs->update_clocks(
   dc->clk_mgr,
   context,
   1);
}
