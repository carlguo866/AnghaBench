
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_8__ {struct komeda_pipeline* pipeline; } ;
struct komeda_scaler {scalar_t__ max_upscaling; TYPE_3__ base; int max_downscaling; int vsize; int hsize; } ;
struct komeda_pipeline {TYPE_4__* funcs; } ;
struct TYPE_7__ {TYPE_1__* component; } ;
struct komeda_data_flow_cfg {scalar_t__ in_w; scalar_t__ in_h; scalar_t__ out_w; scalar_t__ out_h; TYPE_2__ input; } ;
struct TYPE_10__ {int adjusted_mode; } ;
struct komeda_crtc_state {TYPE_5__ base; } ;
struct TYPE_9__ {int (* downscaling_clk_check ) (struct komeda_pipeline*,int *,int ,struct komeda_data_flow_cfg*) ;} ;
struct TYPE_6__ {int id; } ;


 int DRM_DEBUG_ATOMIC (char*) ;
 int EINVAL ;
 int KOMEDA_PIPELINE_COMPIZS ;
 scalar_t__ has_bit (int ,int ) ;
 int in_range (int *,scalar_t__) ;
 int komeda_crtc_get_aclk (struct komeda_crtc_state*) ;
 int scaling_ratio_valid (scalar_t__,scalar_t__,scalar_t__,int ) ;
 int stub1 (struct komeda_pipeline*,int *,int ,struct komeda_data_flow_cfg*) ;

__attribute__((used)) static int
komeda_scaler_check_cfg(struct komeda_scaler *scaler,
   struct komeda_crtc_state *kcrtc_st,
   struct komeda_data_flow_cfg *dflow)
{
 u32 hsize_in, vsize_in, hsize_out, vsize_out;
 u32 max_upscaling;

 hsize_in = dflow->in_w;
 vsize_in = dflow->in_h;
 hsize_out = dflow->out_w;
 vsize_out = dflow->out_h;

 if (!in_range(&scaler->hsize, hsize_in) ||
     !in_range(&scaler->hsize, hsize_out)) {
  DRM_DEBUG_ATOMIC("Invalid horizontal sizes");
  return -EINVAL;
 }

 if (!in_range(&scaler->vsize, vsize_in) ||
     !in_range(&scaler->vsize, vsize_out)) {
  DRM_DEBUG_ATOMIC("Invalid vertical sizes");
  return -EINVAL;
 }




 if (has_bit(dflow->input.component->id, KOMEDA_PIPELINE_COMPIZS))
  max_upscaling = 1;
 else
  max_upscaling = scaler->max_upscaling;

 if (!scaling_ratio_valid(hsize_in, hsize_out, max_upscaling,
     scaler->max_downscaling)) {
  DRM_DEBUG_ATOMIC("Invalid horizontal scaling ratio");
  return -EINVAL;
 }

 if (!scaling_ratio_valid(vsize_in, vsize_out, max_upscaling,
     scaler->max_downscaling)) {
  DRM_DEBUG_ATOMIC("Invalid vertical scaling ratio");
  return -EINVAL;
 }

 if (hsize_in > hsize_out || vsize_in > vsize_out) {
  struct komeda_pipeline *pipe = scaler->base.pipeline;
  int err;

  err = pipe->funcs->downscaling_clk_check(pipe,
     &kcrtc_st->base.adjusted_mode,
     komeda_crtc_get_aclk(kcrtc_st), dflow);
  if (err) {
   DRM_DEBUG_ATOMIC("aclk can't satisfy the clock requirement of the downscaling\n");
   return err;
  }
 }

 return 0;
}
