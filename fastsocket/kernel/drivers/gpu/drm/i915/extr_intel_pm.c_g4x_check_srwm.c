
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_watermark_params {int max_wm; } ;
struct drm_device {int dummy; } ;


 int DRM_DEBUG_KMS (char*,...) ;

__attribute__((used)) static bool g4x_check_srwm(struct drm_device *dev,
      int display_wm, int cursor_wm,
      const struct intel_watermark_params *display,
      const struct intel_watermark_params *cursor)
{
 DRM_DEBUG_KMS("SR watermark: display plane %d, cursor %d\n",
        display_wm, cursor_wm);

 if (display_wm > display->max_wm) {
  DRM_DEBUG_KMS("display watermark is too large(%d/%ld), disabling\n",
         display_wm, display->max_wm);
  return 0;
 }

 if (cursor_wm > cursor->max_wm) {
  DRM_DEBUG_KMS("cursor watermark is too large(%d/%ld), disabling\n",
         cursor_wm, cursor->max_wm);
  return 0;
 }

 if (!(display_wm || cursor_wm)) {
  DRM_DEBUG_KMS("SR latency is 0, disabling\n");
  return 0;
 }

 return 1;
}
