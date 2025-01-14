
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct dss_module_power {int num_clk; TYPE_1__* clk_config; } ;
struct dss_clk {int dummy; } ;
struct TYPE_7__ {int rate; int type; int clk; int clk_name; } ;


 int DRM_DEV_ERROR (TYPE_2__*,char*,int) ;
 int DSS_CLK_AHB ;
 int DSS_CLK_PCLK ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int clk_get_rate (int ) ;
 TYPE_1__* devm_kcalloc (TYPE_2__*,int,int,int ) ;
 int msm_dss_get_clk (TYPE_2__*,TYPE_1__*,int) ;
 int msm_dss_put_clk (TYPE_1__*,int) ;
 int of_clk_set_defaults (int ,int) ;
 int of_property_count_strings (int ,char*) ;
 int of_property_read_string_index (int ,char*,int,char const**) ;
 int pr_debug (char*) ;
 int strlcpy (int ,char const*,int) ;

int msm_dss_parse_clock(struct platform_device *pdev,
   struct dss_module_power *mp)
{
 u32 i, rc = 0;
 const char *clock_name;
 int num_clk = 0;

 if (!pdev || !mp)
  return -EINVAL;

 mp->num_clk = 0;
 num_clk = of_property_count_strings(pdev->dev.of_node, "clock-names");
 if (num_clk <= 0) {
  pr_debug("clocks are not defined\n");
  return 0;
 }

 mp->clk_config = devm_kcalloc(&pdev->dev,
          num_clk, sizeof(struct dss_clk),
          GFP_KERNEL);
 if (!mp->clk_config)
  return -ENOMEM;

 for (i = 0; i < num_clk; i++) {
  rc = of_property_read_string_index(pdev->dev.of_node,
         "clock-names", i,
         &clock_name);
  if (rc) {
   DRM_DEV_ERROR(&pdev->dev, "Failed to get clock name for %d\n",
    i);
   break;
  }
  strlcpy(mp->clk_config[i].clk_name, clock_name,
   sizeof(mp->clk_config[i].clk_name));

  mp->clk_config[i].type = DSS_CLK_AHB;
 }

 rc = msm_dss_get_clk(&pdev->dev, mp->clk_config, num_clk);
 if (rc) {
  DRM_DEV_ERROR(&pdev->dev, "Failed to get clock refs %d\n", rc);
  goto err;
 }

 rc = of_clk_set_defaults(pdev->dev.of_node, 0);
 if (rc) {
  DRM_DEV_ERROR(&pdev->dev, "Failed to set clock defaults %d\n", rc);
  goto err;
 }

 for (i = 0; i < num_clk; i++) {
  u32 rate = clk_get_rate(mp->clk_config[i].clk);
  if (!rate)
   continue;
  mp->clk_config[i].rate = rate;
  mp->clk_config[i].type = DSS_CLK_PCLK;
 }

 mp->num_clk = num_clk;
 return 0;

err:
 msm_dss_put_clk(mp->clk_config, num_clk);
 return rc;
}
