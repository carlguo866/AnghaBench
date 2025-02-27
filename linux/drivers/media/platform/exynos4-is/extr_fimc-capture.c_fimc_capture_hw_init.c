
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fimc_source_info {scalar_t__ fimc_bus_type; } ;
struct TYPE_4__ {struct fimc_ctx* ctx; struct fimc_source_info source_config; } ;
struct fimc_dev {int slock; int state; TYPE_2__* drv_data; TYPE_1__ vid_cap; } ;
struct TYPE_6__ {int * fmt; } ;
struct fimc_ctx {TYPE_3__ s_frame; int d_frame; } ;
struct TYPE_5__ {scalar_t__ alpha_color; } ;


 int EINVAL ;
 scalar_t__ FIMC_BUS_TYPE_ISP_WRITEBACK ;
 int ST_CAPT_APPLY_CFG ;
 int clear_bit (int ,int *) ;
 int fimc_hw_camblk_cfg_writeback (struct fimc_dev*) ;
 int fimc_hw_set_camera_offset (struct fimc_dev*,TYPE_3__*) ;
 int fimc_hw_set_camera_polarity (struct fimc_dev*,struct fimc_source_info*) ;
 int fimc_hw_set_camera_source (struct fimc_dev*,struct fimc_source_info*) ;
 int fimc_hw_set_camera_type (struct fimc_dev*,struct fimc_source_info*) ;
 int fimc_hw_set_effect (struct fimc_ctx*) ;
 int fimc_hw_set_input_path (struct fimc_ctx*) ;
 int fimc_hw_set_mainscaler (struct fimc_ctx*) ;
 int fimc_hw_set_out_dma (struct fimc_ctx*) ;
 int fimc_hw_set_output_path (struct fimc_ctx*) ;
 int fimc_hw_set_prescaler (struct fimc_ctx*) ;
 int fimc_hw_set_rgb_alpha (struct fimc_ctx*) ;
 int fimc_hw_set_rotation (struct fimc_ctx*) ;
 int fimc_hw_set_target_format (struct fimc_ctx*) ;
 int fimc_prepare_dma_offset (struct fimc_ctx*,int *) ;
 int fimc_set_scaler_info (struct fimc_ctx*) ;
 int fimc_set_yuv_order (struct fimc_ctx*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int fimc_capture_hw_init(struct fimc_dev *fimc)
{
 struct fimc_source_info *si = &fimc->vid_cap.source_config;
 struct fimc_ctx *ctx = fimc->vid_cap.ctx;
 int ret;
 unsigned long flags;

 if (ctx == ((void*)0) || ctx->s_frame.fmt == ((void*)0))
  return -EINVAL;

 if (si->fimc_bus_type == FIMC_BUS_TYPE_ISP_WRITEBACK) {
  ret = fimc_hw_camblk_cfg_writeback(fimc);
  if (ret < 0)
   return ret;
 }

 spin_lock_irqsave(&fimc->slock, flags);
 fimc_prepare_dma_offset(ctx, &ctx->d_frame);
 fimc_set_yuv_order(ctx);

 fimc_hw_set_camera_polarity(fimc, si);
 fimc_hw_set_camera_type(fimc, si);
 fimc_hw_set_camera_source(fimc, si);
 fimc_hw_set_camera_offset(fimc, &ctx->s_frame);

 ret = fimc_set_scaler_info(ctx);
 if (!ret) {
  fimc_hw_set_input_path(ctx);
  fimc_hw_set_prescaler(ctx);
  fimc_hw_set_mainscaler(ctx);
  fimc_hw_set_target_format(ctx);
  fimc_hw_set_rotation(ctx);
  fimc_hw_set_effect(ctx);
  fimc_hw_set_output_path(ctx);
  fimc_hw_set_out_dma(ctx);
  if (fimc->drv_data->alpha_color)
   fimc_hw_set_rgb_alpha(ctx);
  clear_bit(ST_CAPT_APPLY_CFG, &fimc->state);
 }
 spin_unlock_irqrestore(&fimc->slock, flags);
 return ret;
}
