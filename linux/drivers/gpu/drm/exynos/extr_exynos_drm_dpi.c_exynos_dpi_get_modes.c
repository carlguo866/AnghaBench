
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct exynos_dpi {TYPE_2__* panel; scalar_t__ vm; int dev; } ;
struct drm_display_mode {int type; } ;
struct drm_connector {int dev; } ;
struct TYPE_4__ {TYPE_1__* funcs; } ;
struct TYPE_3__ {int (* get_modes ) (TYPE_2__*) ;} ;


 int DRM_DEV_ERROR (int ,char*) ;
 int DRM_MODE_TYPE_DRIVER ;
 int DRM_MODE_TYPE_PREFERRED ;
 struct exynos_dpi* connector_to_dpi (struct drm_connector*) ;
 int drm_display_mode_from_videomode (scalar_t__,struct drm_display_mode*) ;
 struct drm_display_mode* drm_mode_create (int ) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static int exynos_dpi_get_modes(struct drm_connector *connector)
{
 struct exynos_dpi *ctx = connector_to_dpi(connector);


 if (ctx->vm) {
  struct drm_display_mode *mode;

  mode = drm_mode_create(connector->dev);
  if (!mode) {
   DRM_DEV_ERROR(ctx->dev,
          "failed to create a new display mode\n");
   return 0;
  }
  drm_display_mode_from_videomode(ctx->vm, mode);
  mode->type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;
  drm_mode_probed_add(connector, mode);
  return 1;
 }

 if (ctx->panel)
  return ctx->panel->funcs->get_modes(ctx->panel);

 return 0;
}
