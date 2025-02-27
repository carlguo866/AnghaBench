
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_display_info {int capabilities; } ;
struct drm_encoder {int dummy; } ;
struct TYPE_2__ {int (* trigger_pending ) (struct dpu_hw_ctl*) ;int (* clear_pending_flush ) (struct dpu_hw_ctl*) ;} ;
struct dpu_hw_ctl {TYPE_1__ ops; } ;
struct dpu_encoder_virt {unsigned int num_phys_encs; struct dpu_encoder_phys* cur_master; struct dpu_encoder_phys** phys_encs; struct msm_display_info disp_info; } ;
struct dpu_encoder_phys {struct dpu_hw_ctl* hw_ctl; } ;


 int DPU_ERROR (char*) ;
 int MSM_DISPLAY_CAP_CMD_MODE ;
 int stub1 (struct dpu_hw_ctl*) ;
 int stub2 (struct dpu_hw_ctl*) ;
 struct dpu_encoder_virt* to_dpu_encoder_virt (struct drm_encoder*) ;

void dpu_encoder_trigger_kickoff_pending(struct drm_encoder *drm_enc)
{
 struct dpu_encoder_virt *dpu_enc;
 struct dpu_encoder_phys *phys;
 unsigned int i;
 struct dpu_hw_ctl *ctl;
 struct msm_display_info *disp_info;

 if (!drm_enc) {
  DPU_ERROR("invalid encoder\n");
  return;
 }
 dpu_enc = to_dpu_encoder_virt(drm_enc);
 disp_info = &dpu_enc->disp_info;

 for (i = 0; i < dpu_enc->num_phys_encs; i++) {
  phys = dpu_enc->phys_encs[i];

  if (phys && phys->hw_ctl) {
   ctl = phys->hw_ctl;
   if (ctl->ops.clear_pending_flush)
    ctl->ops.clear_pending_flush(ctl);


   if ((phys == dpu_enc->cur_master) &&
      (disp_info->capabilities & MSM_DISPLAY_CAP_CMD_MODE)
       && ctl->ops.trigger_pending)
    ctl->ops.trigger_pending(ctl);
  }
 }
}
