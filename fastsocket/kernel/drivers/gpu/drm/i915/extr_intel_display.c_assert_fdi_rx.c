
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int FDI_RX_CTL (int) ;
 int FDI_RX_ENABLE ;
 int I915_READ (int) ;
 int WARN (int,char*,int ,int ) ;
 int state_string (int) ;

__attribute__((used)) static void assert_fdi_rx(struct drm_i915_private *dev_priv,
     enum pipe pipe, bool state)
{
 int reg;
 u32 val;
 bool cur_state;

 reg = FDI_RX_CTL(pipe);
 val = I915_READ(reg);
 cur_state = !!(val & FDI_RX_ENABLE);
 WARN(cur_state != state,
      "FDI RX state assertion failure (expected %s, current %s)\n",
      state_string(state), state_string(cur_state));
}
