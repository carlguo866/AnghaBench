
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct intel_dp {int dummy; } ;
struct TYPE_5__ {int sink_sync_latency; scalar_t__ link_standby; } ;
struct TYPE_6__ {int idle_frames; } ;
struct TYPE_4__ {TYPE_3__ psr; } ;
struct drm_i915_private {TYPE_2__ psr; TYPE_1__ vbt; } ;


 int EDP_PSR_CRC_ENABLE ;
 int EDP_PSR_CTL ;
 int EDP_PSR_ENABLE ;
 int EDP_PSR_IDLE_FRAME_SHIFT ;
 int EDP_PSR_LINK_STANDBY ;
 int EDP_PSR_MAX_SLEEP_TIME_SHIFT ;
 int EDP_PSR_MIN_LINK_ENTRY_TIME_8_LINES ;
 int EDP_PSR_RESTORE_PSR_ACTIVE_CTX_MASK ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_HASWELL (struct drm_i915_private*) ;
 struct drm_i915_private* dp_to_i915 (struct intel_dp*) ;
 int intel_psr1_get_tp_time (struct intel_dp*) ;
 int max (int,int) ;

__attribute__((used)) static void hsw_activate_psr1(struct intel_dp *intel_dp)
{
 struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 u32 max_sleep_time = 0x1f;
 u32 val = EDP_PSR_ENABLE;




 int idle_frames = max(6, dev_priv->vbt.psr.idle_frames);




 idle_frames = max(idle_frames, dev_priv->psr.sink_sync_latency + 1);
 val |= idle_frames << EDP_PSR_IDLE_FRAME_SHIFT;

 val |= max_sleep_time << EDP_PSR_MAX_SLEEP_TIME_SHIFT;
 if (IS_HASWELL(dev_priv))
  val |= EDP_PSR_MIN_LINK_ENTRY_TIME_8_LINES;

 if (dev_priv->psr.link_standby)
  val |= EDP_PSR_LINK_STANDBY;

 val |= intel_psr1_get_tp_time(intel_dp);

 if (INTEL_GEN(dev_priv) >= 8)
  val |= EDP_PSR_CRC_ENABLE;

 val |= I915_READ(EDP_PSR_CTL) & EDP_PSR_RESTORE_PSR_ACTIVE_CTX_MASK;
 I915_WRITE(EDP_PSR_CTL, val);
}
