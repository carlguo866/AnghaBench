
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tegra_sor_state {int link_speed; unsigned long pclk; int bpc; } ;
struct tegra_sor {int clk_parent; } ;
struct drm_display_info {int bpc; } ;
struct TYPE_4__ {struct drm_display_info display_info; } ;
struct tegra_output {int dev; TYPE_2__ connector; } ;
struct tegra_dc {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct TYPE_3__ {int clock; } ;
struct drm_crtc_state {TYPE_1__ mode; } ;
struct drm_connector_state {int crtc; } ;


 int DRM_DEBUG_KMS (char*,int) ;
 int dev_err (int ,char*,int) ;
 struct tegra_output* encoder_to_output (struct drm_encoder*) ;
 int tegra_dc_state_setup_clock (struct tegra_dc*,struct drm_crtc_state*,int ,unsigned long,int ) ;
 struct tegra_sor* to_sor (struct tegra_output*) ;
 struct tegra_sor_state* to_sor_state (struct drm_connector_state*) ;
 struct tegra_dc* to_tegra_dc (int ) ;

__attribute__((used)) static int
tegra_sor_encoder_atomic_check(struct drm_encoder *encoder,
          struct drm_crtc_state *crtc_state,
          struct drm_connector_state *conn_state)
{
 struct tegra_output *output = encoder_to_output(encoder);
 struct tegra_sor_state *state = to_sor_state(conn_state);
 struct tegra_dc *dc = to_tegra_dc(conn_state->crtc);
 unsigned long pclk = crtc_state->mode.clock * 1000;
 struct tegra_sor *sor = to_sor(output);
 struct drm_display_info *info;
 int err;

 info = &output->connector.display_info;





 if (pclk >= 340000000) {
  state->link_speed = 20;
  state->pclk = pclk / 2;
 } else {
  state->link_speed = 10;
  state->pclk = pclk;
 }

 err = tegra_dc_state_setup_clock(dc, crtc_state, sor->clk_parent,
      pclk, 0);
 if (err < 0) {
  dev_err(output->dev, "failed to setup CRTC state: %d\n", err);
  return err;
 }

 switch (info->bpc) {
 case 8:
 case 6:
  state->bpc = info->bpc;
  break;

 default:
  DRM_DEBUG_KMS("%u bits-per-color not supported\n", info->bpc);
  state->bpc = 8;
  break;
 }

 return 0;
}
