
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_crtc {int pipe; int plane; int fdi_lanes; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;


 int DRM_DEBUG_KMS (char*,...) ;
 int DRM_ERROR (char*) ;
 int FDI_LINK_TRAIN_NONE ;
 int FDI_LINK_TRAIN_PATTERN_1 ;
 int FDI_LINK_TRAIN_PATTERN_2 ;
 int FDI_RX_BIT_LOCK ;
 int FDI_RX_CHICKEN (int) ;
 int FDI_RX_CTL (int) ;
 int FDI_RX_ENABLE ;
 int FDI_RX_IIR (int) ;
 int FDI_RX_IMR (int) ;
 int FDI_RX_PHASE_SYNC_POINTER_EN ;
 int FDI_RX_PHASE_SYNC_POINTER_OVR ;
 int FDI_RX_SYMBOL_LOCK ;
 int FDI_TX_CTL (int) ;
 int FDI_TX_ENABLE ;
 int I915_READ (int) ;
 int I915_WRITE (int,int) ;
 int POSTING_READ (int) ;
 int assert_pipe_enabled (struct drm_i915_private*,int) ;
 int assert_plane_enabled (struct drm_i915_private*,int) ;
 struct intel_crtc* to_intel_crtc (struct drm_crtc*) ;
 int udelay (int) ;

__attribute__((used)) static void ironlake_fdi_link_train(struct drm_crtc *crtc)
{
 struct drm_device *dev = crtc->dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
 int pipe = intel_crtc->pipe;
 int plane = intel_crtc->plane;
 u32 reg, temp, tries;


 assert_pipe_enabled(dev_priv, pipe);
 assert_plane_enabled(dev_priv, plane);



 reg = FDI_RX_IMR(pipe);
 temp = I915_READ(reg);
 temp &= ~FDI_RX_SYMBOL_LOCK;
 temp &= ~FDI_RX_BIT_LOCK;
 I915_WRITE(reg, temp);
 I915_READ(reg);
 udelay(150);


 reg = FDI_TX_CTL(pipe);
 temp = I915_READ(reg);
 temp &= ~(7 << 19);
 temp |= (intel_crtc->fdi_lanes - 1) << 19;
 temp &= ~FDI_LINK_TRAIN_NONE;
 temp |= FDI_LINK_TRAIN_PATTERN_1;
 I915_WRITE(reg, temp | FDI_TX_ENABLE);

 reg = FDI_RX_CTL(pipe);
 temp = I915_READ(reg);
 temp &= ~FDI_LINK_TRAIN_NONE;
 temp |= FDI_LINK_TRAIN_PATTERN_1;
 I915_WRITE(reg, temp | FDI_RX_ENABLE);

 POSTING_READ(reg);
 udelay(150);


 I915_WRITE(FDI_RX_CHICKEN(pipe), FDI_RX_PHASE_SYNC_POINTER_OVR);
 I915_WRITE(FDI_RX_CHICKEN(pipe), FDI_RX_PHASE_SYNC_POINTER_OVR |
     FDI_RX_PHASE_SYNC_POINTER_EN);

 reg = FDI_RX_IIR(pipe);
 for (tries = 0; tries < 5; tries++) {
  temp = I915_READ(reg);
  DRM_DEBUG_KMS("FDI_RX_IIR 0x%x\n", temp);

  if ((temp & FDI_RX_BIT_LOCK)) {
   DRM_DEBUG_KMS("FDI train 1 done.\n");
   I915_WRITE(reg, temp | FDI_RX_BIT_LOCK);
   break;
  }
 }
 if (tries == 5)
  DRM_ERROR("FDI train 1 fail!\n");


 reg = FDI_TX_CTL(pipe);
 temp = I915_READ(reg);
 temp &= ~FDI_LINK_TRAIN_NONE;
 temp |= FDI_LINK_TRAIN_PATTERN_2;
 I915_WRITE(reg, temp);

 reg = FDI_RX_CTL(pipe);
 temp = I915_READ(reg);
 temp &= ~FDI_LINK_TRAIN_NONE;
 temp |= FDI_LINK_TRAIN_PATTERN_2;
 I915_WRITE(reg, temp);

 POSTING_READ(reg);
 udelay(150);

 reg = FDI_RX_IIR(pipe);
 for (tries = 0; tries < 5; tries++) {
  temp = I915_READ(reg);
  DRM_DEBUG_KMS("FDI_RX_IIR 0x%x\n", temp);

  if (temp & FDI_RX_SYMBOL_LOCK) {
   I915_WRITE(reg, temp | FDI_RX_SYMBOL_LOCK);
   DRM_DEBUG_KMS("FDI train 2 done.\n");
   break;
  }
 }
 if (tries == 5)
  DRM_ERROR("FDI train 2 fail!\n");

 DRM_DEBUG_KMS("FDI train done\n");

}
