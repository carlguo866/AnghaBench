
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int combination_mode; int active_low_pwm; int max; int enabled; int min; int level; } ;
struct intel_panel {TYPE_2__ backlight; } ;
struct TYPE_3__ {int dev; } ;
struct intel_connector {struct intel_panel panel; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int BLC_PWM_CTL ;
 int BLC_PWM_CTL2 ;
 int BLM_COMBINATION_MODE ;
 int BLM_POLARITY_I965 ;
 int BLM_PWM_ENABLE ;
 int ENODEV ;
 int I915_READ (int ) ;
 int clamp (int,int ,int) ;
 int get_backlight_max_vbt (struct intel_connector*) ;
 int get_backlight_min_vbt (struct intel_connector*) ;
 int i9xx_get_backlight (struct intel_connector*) ;
 int intel_panel_compute_brightness (struct intel_connector*,int) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static int i965_setup_backlight(struct intel_connector *connector, enum pipe unused)
{
 struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 struct intel_panel *panel = &connector->panel;
 u32 ctl, ctl2, val;

 ctl2 = I915_READ(BLC_PWM_CTL2);
 panel->backlight.combination_mode = ctl2 & BLM_COMBINATION_MODE;
 panel->backlight.active_low_pwm = ctl2 & BLM_POLARITY_I965;

 ctl = I915_READ(BLC_PWM_CTL);
 panel->backlight.max = ctl >> 16;

 if (!panel->backlight.max)
  panel->backlight.max = get_backlight_max_vbt(connector);

 if (!panel->backlight.max)
  return -ENODEV;

 if (panel->backlight.combination_mode)
  panel->backlight.max *= 0xff;

 panel->backlight.min = get_backlight_min_vbt(connector);

 val = i9xx_get_backlight(connector);
 val = intel_panel_compute_brightness(connector, val);
 panel->backlight.level = clamp(val, panel->backlight.min,
           panel->backlight.max);

 panel->backlight.enabled = ctl2 & BLM_PWM_ENABLE;

 return 0;
}
