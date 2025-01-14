
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct omap_overlay_manager {int id; } ;
struct dsi_data {scalar_t__ mode; } ;


 int OMAP_DSS_CLK_SRC_FCK ;
 scalar_t__ OMAP_DSS_DSI_CMD_MODE ;
 int dsi_framedone_irq_callback ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;
 int dss_mgr_unregister_framedone_handler (struct omap_overlay_manager*,int ,struct platform_device*) ;
 int dss_select_lcd_clk_source (int ,int ) ;

__attribute__((used)) static void dsi_display_uninit_dispc(struct platform_device *dsidev,
  struct omap_overlay_manager *mgr)
{
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);

 if (dsi->mode == OMAP_DSS_DSI_CMD_MODE)
  dss_mgr_unregister_framedone_handler(mgr,
    dsi_framedone_irq_callback, dsidev);

 dss_select_lcd_clk_source(mgr->id, OMAP_DSS_CLK_SRC_FCK);
}
