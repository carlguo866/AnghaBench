
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_6__ {int * event; int crtc; } ;
struct intel_crtc_state {TYPE_1__ base; } ;
struct TYPE_7__ {scalar_t__ start_vbl_count; int start_vbl_time; int scanline_start; int max_vbl; int min_vbl; } ;
struct TYPE_9__ {TYPE_3__* dev; } ;
struct intel_crtc {int pipe; TYPE_2__ debug; TYPE_4__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef int ktime_t ;
typedef enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_8__ {int event_lock; } ;


 int DRM_ERROR (char*,int ,scalar_t__,scalar_t__,scalar_t__,int ,int ,int ,int) ;
 int DRM_WARN (char*,int ,scalar_t__,scalar_t__) ;
 scalar_t__ VBLANK_EVASION_TIME_US ;
 int WARN_ON (int) ;
 int drm_crtc_arm_vblank_event (TYPE_4__*,int *) ;
 scalar_t__ drm_crtc_vblank_get (TYPE_4__*) ;
 scalar_t__ intel_crtc_get_vblank_counter (struct intel_crtc*) ;
 int intel_get_crtc_scanline (struct intel_crtc*) ;
 scalar_t__ intel_vgpu_active (struct drm_i915_private*) ;
 int ktime_get () ;
 scalar_t__ ktime_us_delta (int ,int ) ;
 int local_irq_enable () ;
 int pipe_name (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct drm_i915_private* to_i915 (TYPE_3__*) ;
 struct intel_crtc* to_intel_crtc (int ) ;
 int trace_i915_pipe_update_end (struct intel_crtc*,scalar_t__,int) ;

void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state)
{
 struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->base.crtc);
 enum pipe pipe = crtc->pipe;
 int scanline_end = intel_get_crtc_scanline(crtc);
 u32 end_vbl_count = intel_crtc_get_vblank_counter(crtc);
 ktime_t end_vbl_time = ktime_get();
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);

 trace_i915_pipe_update_end(crtc, end_vbl_count, scanline_end);





 if (new_crtc_state->base.event) {
  WARN_ON(drm_crtc_vblank_get(&crtc->base) != 0);

  spin_lock(&crtc->base.dev->event_lock);
  drm_crtc_arm_vblank_event(&crtc->base, new_crtc_state->base.event);
  spin_unlock(&crtc->base.dev->event_lock);

  new_crtc_state->base.event = ((void*)0);
 }

 local_irq_enable();

 if (intel_vgpu_active(dev_priv))
  return;

 if (crtc->debug.start_vbl_count &&
     crtc->debug.start_vbl_count != end_vbl_count) {
  DRM_ERROR("Atomic update failure on pipe %c (start=%u end=%u) time %lld us, min %d, max %d, scanline start %d, end %d\n",
     pipe_name(pipe), crtc->debug.start_vbl_count,
     end_vbl_count,
     ktime_us_delta(end_vbl_time, crtc->debug.start_vbl_time),
     crtc->debug.min_vbl, crtc->debug.max_vbl,
     crtc->debug.scanline_start, scanline_end);
 }
}
