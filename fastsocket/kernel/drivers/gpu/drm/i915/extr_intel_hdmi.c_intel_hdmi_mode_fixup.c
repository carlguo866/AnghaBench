
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_hdmi {scalar_t__ color_range; scalar_t__ has_hdmi_sink; scalar_t__ color_range_auto; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int private_flags; } ;


 int INTEL_MODE_LIMITED_COLOR_RANGE ;
 scalar_t__ SDVO_COLOR_RANGE_16_235 ;
 int drm_match_cea_mode (struct drm_display_mode*) ;
 struct intel_hdmi* enc_to_intel_hdmi (struct drm_encoder*) ;

bool intel_hdmi_mode_fixup(struct drm_encoder *encoder,
      const struct drm_display_mode *mode,
      struct drm_display_mode *adjusted_mode)
{
 struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);

 if (intel_hdmi->color_range_auto) {

  if (intel_hdmi->has_hdmi_sink &&
      drm_match_cea_mode(adjusted_mode) > 1)
   intel_hdmi->color_range = SDVO_COLOR_RANGE_16_235;
  else
   intel_hdmi->color_range = 0;
 }

 if (intel_hdmi->color_range)
  adjusted_mode->private_flags |= INTEL_MODE_LIMITED_COLOR_RANGE;

 return 1;
}
