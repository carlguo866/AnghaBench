
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_hdmi {int has_hdmi_sink; } ;
struct intel_crtc {int pipe; } ;
struct drm_i915_private {int dummy; } ;
struct drm_encoder {int crtc; TYPE_1__* dev; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_2__ {struct drm_i915_private* dev_private; } ;


 int HSW_TVIDEO_DIP_CTL (int ) ;
 int I915_READ (int) ;
 int I915_WRITE (int,int) ;
 int POSTING_READ (int) ;
 int VIDEO_DIP_ENABLE_GCP_HSW ;
 int VIDEO_DIP_ENABLE_GMP_HSW ;
 int VIDEO_DIP_ENABLE_VSC_HSW ;
 int VIDEO_DIP_ENABLE_VS_HSW ;
 int assert_hdmi_port_disabled (struct intel_hdmi*) ;
 struct intel_hdmi* enc_to_intel_hdmi (struct drm_encoder*) ;
 int intel_hdmi_set_avi_infoframe (struct drm_encoder*,struct drm_display_mode*) ;
 int intel_hdmi_set_spd_infoframe (struct drm_encoder*) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static void hsw_set_infoframes(struct drm_encoder *encoder,
          struct drm_display_mode *adjusted_mode)
{
 struct drm_i915_private *dev_priv = encoder->dev->dev_private;
 struct intel_crtc *intel_crtc = to_intel_crtc(encoder->crtc);
 struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);
 u32 reg = HSW_TVIDEO_DIP_CTL(intel_crtc->pipe);
 u32 val = I915_READ(reg);

 assert_hdmi_port_disabled(intel_hdmi);

 if (!intel_hdmi->has_hdmi_sink) {
  I915_WRITE(reg, 0);
  POSTING_READ(reg);
  return;
 }

 val &= ~(VIDEO_DIP_ENABLE_VSC_HSW | VIDEO_DIP_ENABLE_GCP_HSW |
   VIDEO_DIP_ENABLE_VS_HSW | VIDEO_DIP_ENABLE_GMP_HSW);

 I915_WRITE(reg, val);
 POSTING_READ(reg);

 intel_hdmi_set_avi_infoframe(encoder, adjusted_mode);
 intel_hdmi_set_spd_infoframe(encoder);
}
