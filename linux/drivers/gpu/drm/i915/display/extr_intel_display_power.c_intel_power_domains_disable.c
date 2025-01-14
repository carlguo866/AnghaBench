
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_power_domains {int wakeref; } ;
struct drm_i915_private {struct i915_power_domains power_domains; } ;


 int POWER_DOMAIN_INIT ;
 int WARN_ON (int ) ;
 int intel_display_power_get (struct drm_i915_private*,int ) ;
 int intel_power_domains_verify_state (struct drm_i915_private*) ;

void intel_power_domains_disable(struct drm_i915_private *i915)
{
 struct i915_power_domains *power_domains = &i915->power_domains;

 WARN_ON(power_domains->wakeref);
 power_domains->wakeref =
  intel_display_power_get(i915, POWER_DOMAIN_INIT);

 intel_power_domains_verify_state(i915);
}
