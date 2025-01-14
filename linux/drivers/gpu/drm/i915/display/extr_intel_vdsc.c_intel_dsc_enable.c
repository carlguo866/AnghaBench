
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int dev; } ;
struct intel_encoder {TYPE_2__ base; } ;
struct TYPE_6__ {scalar_t__ dsc_split; int compression_enable; } ;
struct TYPE_4__ {int crtc; } ;
struct intel_crtc_state {scalar_t__ cpu_transcoder; TYPE_3__ dsc_params; TYPE_1__ base; } ;
struct intel_crtc {int pipe; } ;
struct drm_i915_private {int dummy; } ;
typedef int i915_reg_t ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DSS_CTL1 ;
 int DSS_CTL2 ;
 int I915_WRITE (int ,int ) ;
 int ICL_PIPE_DSS_CTL1 (int) ;
 int ICL_PIPE_DSS_CTL2 (int) ;
 int JOINER_ENABLE ;
 int LEFT_BRANCH_VDSC_ENABLE ;
 int RIGHT_BRANCH_VDSC_ENABLE ;
 scalar_t__ TRANSCODER_EDP ;
 int intel_configure_pps_for_dsc_encoder (struct intel_encoder*,struct intel_crtc_state const*) ;
 int intel_display_power_get (struct drm_i915_private*,int ) ;
 int intel_dp_write_dsc_pps_sdp (struct intel_encoder*,struct intel_crtc_state const*) ;
 int intel_dsc_power_domain (struct intel_crtc_state const*) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

void intel_dsc_enable(struct intel_encoder *encoder,
        const struct intel_crtc_state *crtc_state)
{
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 enum pipe pipe = crtc->pipe;
 i915_reg_t dss_ctl1_reg, dss_ctl2_reg;
 u32 dss_ctl1_val = 0;
 u32 dss_ctl2_val = 0;

 if (!crtc_state->dsc_params.compression_enable)
  return;


 intel_display_power_get(dev_priv,
    intel_dsc_power_domain(crtc_state));

 intel_configure_pps_for_dsc_encoder(encoder, crtc_state);

 intel_dp_write_dsc_pps_sdp(encoder, crtc_state);

 if (crtc_state->cpu_transcoder == TRANSCODER_EDP) {
  dss_ctl1_reg = DSS_CTL1;
  dss_ctl2_reg = DSS_CTL2;
 } else {
  dss_ctl1_reg = ICL_PIPE_DSS_CTL1(pipe);
  dss_ctl2_reg = ICL_PIPE_DSS_CTL2(pipe);
 }
 dss_ctl2_val |= LEFT_BRANCH_VDSC_ENABLE;
 if (crtc_state->dsc_params.dsc_split) {
  dss_ctl2_val |= RIGHT_BRANCH_VDSC_ENABLE;
  dss_ctl1_val |= JOINER_ENABLE;
 }
 I915_WRITE(dss_ctl1_reg, dss_ctl1_val);
 I915_WRITE(dss_ctl2_reg, dss_ctl2_val);
}
