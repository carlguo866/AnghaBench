
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct intel_dpll_hw_state {int cfgcr0; } ;
struct intel_crtc_state {int port_clock; struct intel_dpll_hw_state dpll_hw_state; } ;
struct drm_i915_private {int dummy; } ;


 int DPLL_CFGCR0_HDMI_MODE ;
 int DPLL_CFGCR0_LINK_RATE_MASK ;
 int WARN (int,char*) ;
 int cnl_calc_wrpll_link (struct drm_i915_private*,struct intel_dpll_hw_state*) ;
 int ddi_dotclock_get (struct intel_crtc_state*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void cnl_ddi_clock_get(struct intel_encoder *encoder,
         struct intel_crtc_state *pipe_config)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 struct intel_dpll_hw_state *pll_state = &pipe_config->dpll_hw_state;
 int link_clock;

 if (pll_state->cfgcr0 & DPLL_CFGCR0_HDMI_MODE) {
  link_clock = cnl_calc_wrpll_link(dev_priv, pll_state);
 } else {
  link_clock = pll_state->cfgcr0 & DPLL_CFGCR0_LINK_RATE_MASK;

  switch (link_clock) {
  case 128:
   link_clock = 81000;
   break;
  case 135:
   link_clock = 108000;
   break;
  case 134:
   link_clock = 135000;
   break;
  case 133:
   link_clock = 162000;
   break;
  case 132:
   link_clock = 216000;
   break;
  case 131:
   link_clock = 270000;
   break;
  case 130:
   link_clock = 324000;
   break;
  case 129:
   link_clock = 405000;
   break;
  default:
   WARN(1, "Unsupported link rate\n");
   break;
  }
  link_clock *= 2;
 }

 pipe_config->port_clock = link_clock;

 ddi_dotclock_get(pipe_config);
}
