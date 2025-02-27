
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {scalar_t__ start; } ;
struct platform_device {int dummy; } ;
struct msm_dsi_host {TYPE_1__* cfg_hnd; struct platform_device* pdev; } ;
struct msm_dsi_config {int num_dsi; scalar_t__* io_start; } ;
struct TYPE_2__ {struct msm_dsi_config* cfg; } ;


 int EINVAL ;
 int IORESOURCE_MEM ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;

__attribute__((used)) static int dsi_host_get_id(struct msm_dsi_host *msm_host)
{
 struct platform_device *pdev = msm_host->pdev;
 const struct msm_dsi_config *cfg = msm_host->cfg_hnd->cfg;
 struct resource *res;
 int i;

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "dsi_ctrl");
 if (!res)
  return -EINVAL;

 for (i = 0; i < cfg->num_dsi; i++) {
  if (cfg->io_start[i] == res->start)
   return i;
 }

 return -EINVAL;
}
