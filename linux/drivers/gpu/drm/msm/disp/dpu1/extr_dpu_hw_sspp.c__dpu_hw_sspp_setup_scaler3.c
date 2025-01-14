
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct dpu_hw_scaler3_cfg {int dummy; } ;
struct dpu_hw_pixel_ext {int dummy; } ;
struct TYPE_8__ {int format; } ;
struct dpu_hw_pipe_cfg {TYPE_4__ layout; } ;
struct dpu_hw_pipe {TYPE_3__* cap; int hw; } ;
struct TYPE_7__ {TYPE_2__* sblk; } ;
struct TYPE_5__ {int version; } ;
struct TYPE_6__ {TYPE_1__ scaler_blk; } ;


 int DPU_SSPP_SCALER_QSEED3 ;
 scalar_t__ _sspp_subblk_offset (struct dpu_hw_pipe*,int ,int *) ;
 int dpu_hw_setup_scaler3 (int *,struct dpu_hw_scaler3_cfg*,int ,int ,int ) ;

__attribute__((used)) static void _dpu_hw_sspp_setup_scaler3(struct dpu_hw_pipe *ctx,
  struct dpu_hw_pipe_cfg *sspp,
  struct dpu_hw_pixel_ext *pe,
  void *scaler_cfg)
{
 u32 idx;
 struct dpu_hw_scaler3_cfg *scaler3_cfg = scaler_cfg;

 (void)pe;
 if (_sspp_subblk_offset(ctx, DPU_SSPP_SCALER_QSEED3, &idx) || !sspp
  || !scaler3_cfg || !ctx || !ctx->cap || !ctx->cap->sblk)
  return;

 dpu_hw_setup_scaler3(&ctx->hw, scaler3_cfg, idx,
   ctx->cap->sblk->scaler_blk.version,
   sspp->layout.format);
}
