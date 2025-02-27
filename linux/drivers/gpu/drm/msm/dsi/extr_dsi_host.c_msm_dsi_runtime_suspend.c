
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct msm_dsi_host {int cfg_hnd; } ;
struct msm_dsi {struct mipi_dsi_host* host; } ;
struct mipi_dsi_host {int dummy; } ;
struct device {int dummy; } ;


 int dsi_bus_clk_disable (struct msm_dsi_host*) ;
 struct msm_dsi* platform_get_drvdata (struct platform_device*) ;
 struct msm_dsi_host* to_msm_dsi_host (struct mipi_dsi_host*) ;
 struct platform_device* to_platform_device (struct device*) ;

int msm_dsi_runtime_suspend(struct device *dev)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct msm_dsi *msm_dsi = platform_get_drvdata(pdev);
 struct mipi_dsi_host *host = msm_dsi->host;
 struct msm_dsi_host *msm_host = to_msm_dsi_host(host);

 if (!msm_host->cfg_hnd)
  return 0;

 dsi_bus_clk_disable(msm_host);

 return 0;
}
