
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct intel_hdmi {int hdmi_reg; } ;
struct TYPE_4__ {struct drm_device* dev; } ;
struct intel_encoder {TYPE_2__ base; } ;
struct TYPE_3__ {int crtc; } ;
struct intel_crtc_state {int pipe_bpp; scalar_t__ has_audio; TYPE_1__ base; } ;
struct intel_crtc {int pipe; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector_state {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int HDMI_AUDIO_ENABLE ;
 int HDMI_COLOR_FORMAT_12bpc ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int POSTING_READ (int ) ;
 int SDVO_COLOR_FORMAT_8bpc ;
 int SDVO_COLOR_FORMAT_MASK ;
 int SDVO_ENABLE ;
 int TRANS_CHICKEN1 (int) ;
 int TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE ;
 struct intel_hdmi* enc_to_intel_hdmi (TYPE_2__*) ;
 int intel_enable_hdmi_audio (struct intel_encoder*,struct intel_crtc_state const*,struct drm_connector_state const*) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static void cpt_enable_hdmi(struct intel_encoder *encoder,
       const struct intel_crtc_state *pipe_config,
       const struct drm_connector_state *conn_state)
{
 struct drm_device *dev = encoder->base.dev;
 struct drm_i915_private *dev_priv = to_i915(dev);
 struct intel_crtc *crtc = to_intel_crtc(pipe_config->base.crtc);
 struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(&encoder->base);
 enum pipe pipe = crtc->pipe;
 u32 temp;

 temp = I915_READ(intel_hdmi->hdmi_reg);

 temp |= SDVO_ENABLE;
 if (pipe_config->has_audio)
  temp |= HDMI_AUDIO_ENABLE;
 if (pipe_config->pipe_bpp > 24) {
  I915_WRITE(TRANS_CHICKEN1(pipe),
      I915_READ(TRANS_CHICKEN1(pipe)) |
      TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE);

  temp &= ~SDVO_COLOR_FORMAT_MASK;
  temp |= SDVO_COLOR_FORMAT_8bpc;
 }

 I915_WRITE(intel_hdmi->hdmi_reg, temp);
 POSTING_READ(intel_hdmi->hdmi_reg);

 if (pipe_config->pipe_bpp > 24) {
  temp &= ~SDVO_COLOR_FORMAT_MASK;
  temp |= HDMI_COLOR_FORMAT_12bpc;

  I915_WRITE(intel_hdmi->hdmi_reg, temp);
  POSTING_READ(intel_hdmi->hdmi_reg);

  I915_WRITE(TRANS_CHICKEN1(pipe),
      I915_READ(TRANS_CHICKEN1(pipe)) &
      ~TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE);
 }

 if (pipe_config->has_audio)
  intel_enable_hdmi_audio(encoder, pipe_config, conn_state);
}
