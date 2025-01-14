
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rm68200 {int prepared; scalar_t__ reset_gpio; int supply; int dev; } ;
struct mipi_dsi_device {int dummy; } ;
struct drm_panel {int dummy; } ;


 int DRM_ERROR (char*,int) ;
 int gpiod_set_value_cansleep (scalar_t__,int) ;
 int mipi_dsi_dcs_exit_sleep_mode (struct mipi_dsi_device*) ;
 int mipi_dsi_dcs_set_display_on (struct mipi_dsi_device*) ;
 int msleep (int) ;
 struct rm68200* panel_to_rm68200 (struct drm_panel*) ;
 int regulator_enable (int ) ;
 int rm68200_init_sequence (struct rm68200*) ;
 struct mipi_dsi_device* to_mipi_dsi_device (int ) ;

__attribute__((used)) static int rm68200_prepare(struct drm_panel *panel)
{
 struct rm68200 *ctx = panel_to_rm68200(panel);
 struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);
 int ret;

 if (ctx->prepared)
  return 0;

 ret = regulator_enable(ctx->supply);
 if (ret < 0) {
  DRM_ERROR("failed to enable supply: %d\n", ret);
  return ret;
 }

 if (ctx->reset_gpio) {
  gpiod_set_value_cansleep(ctx->reset_gpio, 1);
  msleep(20);
  gpiod_set_value_cansleep(ctx->reset_gpio, 0);
  msleep(100);
 }

 rm68200_init_sequence(ctx);

 ret = mipi_dsi_dcs_exit_sleep_mode(dsi);
 if (ret)
  return ret;

 msleep(125);

 ret = mipi_dsi_dcs_set_display_on(dsi);
 if (ret)
  return ret;

 msleep(20);

 ctx->prepared = 1;

 return 0;
}
