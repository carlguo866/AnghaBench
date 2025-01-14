
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltdc_device {int regs; } ;
struct drm_crtc {int dummy; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int IER_LIE ;
 int LTDC_IER ;
 struct ltdc_device* crtc_to_ltdc (struct drm_crtc*) ;
 int reg_clear (int ,int ,int ) ;

__attribute__((used)) static void ltdc_crtc_disable_vblank(struct drm_crtc *crtc)
{
 struct ltdc_device *ldev = crtc_to_ltdc(crtc);

 DRM_DEBUG_DRIVER("\n");
 reg_clear(ldev->regs, LTDC_IER, IER_LIE);
}
