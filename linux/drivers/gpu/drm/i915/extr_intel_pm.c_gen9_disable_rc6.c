
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int GEN6_RC_CONTROL ;
 int GEN9_PG_ENABLE ;
 int I915_WRITE (int ,int ) ;

__attribute__((used)) static void gen9_disable_rc6(struct drm_i915_private *dev_priv)
{
 I915_WRITE(GEN6_RC_CONTROL, 0);
 I915_WRITE(GEN9_PG_ENABLE, 0);
}
