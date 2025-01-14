
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_crtc {int cpu_transcoder; } ;
struct drm_i915_private {struct drm_crtc** pipe_to_crtc_mapping; } ;
struct drm_crtc {int dummy; } ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 struct intel_crtc* to_intel_crtc (struct drm_crtc*) ;

enum transcoder intel_pipe_to_cpu_transcoder(struct drm_i915_private *dev_priv,
          enum pipe pipe)
{
 struct drm_crtc *crtc = dev_priv->pipe_to_crtc_mapping[pipe];
 struct intel_crtc *intel_crtc = to_intel_crtc(crtc);

 return intel_crtc->cpu_transcoder;
}
