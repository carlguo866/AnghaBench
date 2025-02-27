
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct exynos_drm_crtc {struct decon_context* ctx; } ;
struct decon_context {scalar_t__ regs; int i80_if; int irq_flags; scalar_t__ suspended; } ;


 scalar_t__ VIDINTCON0 ;
 int VIDINTCON0_INT_ENABLE ;
 int VIDINTCON0_INT_FRAME ;
 int readl (scalar_t__) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void decon_disable_vblank(struct exynos_drm_crtc *crtc)
{
 struct decon_context *ctx = crtc->ctx;
 u32 val;

 if (ctx->suspended)
  return;

 if (test_and_clear_bit(0, &ctx->irq_flags)) {
  val = readl(ctx->regs + VIDINTCON0);

  val &= ~VIDINTCON0_INT_ENABLE;
  if (!ctx->i80_if)
   val &= ~VIDINTCON0_INT_FRAME;

  writel(val, ctx->regs + VIDINTCON0);
 }
}
