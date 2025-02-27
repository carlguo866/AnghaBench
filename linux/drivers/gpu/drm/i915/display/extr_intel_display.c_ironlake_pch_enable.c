
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct drm_display_mode {int flags; } ;
struct TYPE_7__ {struct drm_display_mode adjusted_mode; int crtc; } ;
struct intel_crtc_state {scalar_t__ shared_dpll; TYPE_3__ base; } ;
struct TYPE_5__ {struct drm_device* dev; } ;
struct intel_crtc {int pipe; TYPE_1__ base; } ;
struct intel_atomic_state {int dummy; } ;
struct TYPE_6__ {int (* fdi_link_train ) (struct intel_crtc*,struct intel_crtc_state const*) ;} ;
struct drm_i915_private {TYPE_2__ display; } ;
struct drm_device {int dummy; } ;
typedef int i915_reg_t ;
typedef enum port { ____Placeholder_port } port ;
struct TYPE_8__ {int port; } ;


 int DPLL_ID_PCH_PLL_B ;
 int DRM_MODE_FLAG_PHSYNC ;
 int DRM_MODE_FLAG_PVSYNC ;
 int FDI_RX_TUSIZE1 (int) ;
 scalar_t__ HAS_PCH_CPT (struct drm_i915_private*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 scalar_t__ IS_IVYBRIDGE (struct drm_i915_private*) ;
 int PCH_DPLL_SEL ;
 int PIPECONF (int) ;
 int PIPECONF_BPC_MASK ;
 int PIPE_DATA_M1 (int) ;
 int PORT_B ;
 int PORT_D ;
 int TRANS_DPLLB_SEL (int) ;
 int TRANS_DPLL_ENABLE (int) ;
 int TRANS_DP_BPC_MASK ;
 int TRANS_DP_CTL (int) ;
 int TRANS_DP_HSYNC_ACTIVE_HIGH ;
 int TRANS_DP_OUTPUT_ENABLE ;
 int TRANS_DP_PORT_SEL (int) ;
 int TRANS_DP_PORT_SEL_MASK ;
 int TRANS_DP_SYNC_MASK ;
 int TRANS_DP_VSYNC_ACTIVE_HIGH ;
 int TU_SIZE_MASK ;
 int WARN_ON (int) ;
 int assert_panel_unlocked (struct drm_i915_private*,int) ;
 int assert_pch_transcoder_disabled (struct drm_i915_private*,int) ;
 scalar_t__ intel_crtc_has_dp_encoder (struct intel_crtc_state const*) ;
 int intel_enable_shared_dpll (struct intel_crtc_state const*) ;
 int intel_fdi_normal_train (struct intel_crtc*) ;
 TYPE_4__* intel_get_crtc_new_encoder (struct intel_atomic_state const*,struct intel_crtc_state const*) ;
 scalar_t__ intel_get_shared_dpll_by_id (struct drm_i915_private*,int ) ;
 int ironlake_enable_pch_transcoder (struct intel_crtc_state const*) ;
 int ironlake_pch_transcoder_set_timings (struct intel_crtc_state const*,int) ;
 int ivybridge_update_fdi_bc_bifurcation (struct intel_crtc_state const*) ;
 int stub1 (struct intel_crtc*,struct intel_crtc_state const*) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static void ironlake_pch_enable(const struct intel_atomic_state *state,
    const struct intel_crtc_state *crtc_state)
{
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 struct drm_device *dev = crtc->base.dev;
 struct drm_i915_private *dev_priv = to_i915(dev);
 int pipe = crtc->pipe;
 u32 temp;

 assert_pch_transcoder_disabled(dev_priv, pipe);

 if (IS_IVYBRIDGE(dev_priv))
  ivybridge_update_fdi_bc_bifurcation(crtc_state);



 I915_WRITE(FDI_RX_TUSIZE1(pipe),
     I915_READ(PIPE_DATA_M1(pipe)) & TU_SIZE_MASK);


 dev_priv->display.fdi_link_train(crtc, crtc_state);



 if (HAS_PCH_CPT(dev_priv)) {
  u32 sel;

  temp = I915_READ(PCH_DPLL_SEL);
  temp |= TRANS_DPLL_ENABLE(pipe);
  sel = TRANS_DPLLB_SEL(pipe);
  if (crtc_state->shared_dpll ==
      intel_get_shared_dpll_by_id(dev_priv, DPLL_ID_PCH_PLL_B))
   temp |= sel;
  else
   temp &= ~sel;
  I915_WRITE(PCH_DPLL_SEL, temp);
 }
 intel_enable_shared_dpll(crtc_state);


 assert_panel_unlocked(dev_priv, pipe);
 ironlake_pch_transcoder_set_timings(crtc_state, pipe);

 intel_fdi_normal_train(crtc);


 if (HAS_PCH_CPT(dev_priv) &&
     intel_crtc_has_dp_encoder(crtc_state)) {
  const struct drm_display_mode *adjusted_mode =
   &crtc_state->base.adjusted_mode;
  u32 bpc = (I915_READ(PIPECONF(pipe)) & PIPECONF_BPC_MASK) >> 5;
  i915_reg_t reg = TRANS_DP_CTL(pipe);
  enum port port;

  temp = I915_READ(reg);
  temp &= ~(TRANS_DP_PORT_SEL_MASK |
     TRANS_DP_SYNC_MASK |
     TRANS_DP_BPC_MASK);
  temp |= TRANS_DP_OUTPUT_ENABLE;
  temp |= bpc << 9;

  if (adjusted_mode->flags & DRM_MODE_FLAG_PHSYNC)
   temp |= TRANS_DP_HSYNC_ACTIVE_HIGH;
  if (adjusted_mode->flags & DRM_MODE_FLAG_PVSYNC)
   temp |= TRANS_DP_VSYNC_ACTIVE_HIGH;

  port = intel_get_crtc_new_encoder(state, crtc_state)->port;
  WARN_ON(port < PORT_B || port > PORT_D);
  temp |= TRANS_DP_PORT_SEL(port);

  I915_WRITE(reg, temp);
 }

 ironlake_enable_pch_transcoder(crtc_state);
}
