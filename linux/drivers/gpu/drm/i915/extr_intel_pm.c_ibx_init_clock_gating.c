
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int I915_WRITE (int ,int ) ;
 int PCH_DPLSUNIT_CLOCK_GATE_DISABLE ;
 int SOUTH_DSPCLK_GATE_D ;

__attribute__((used)) static void ibx_init_clock_gating(struct drm_i915_private *dev_priv)
{





 I915_WRITE(SOUTH_DSPCLK_GATE_D, PCH_DPLSUNIT_CLOCK_GATE_DISABLE);
}
