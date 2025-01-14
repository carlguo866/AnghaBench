
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {struct dw_mci_drv_data* data; } ;
struct dw_mci_drv_data {int dummy; } ;


 int dw_mci_exynos_match ;
 int dw_mci_pltfm_register (struct platform_device*,struct dw_mci_drv_data const*) ;
 struct of_device_id* of_match_node (int ,int ) ;
 int pm_runtime_disable (TYPE_1__*) ;
 int pm_runtime_enable (TYPE_1__*) ;
 int pm_runtime_get_noresume (TYPE_1__*) ;
 int pm_runtime_put_noidle (TYPE_1__*) ;
 int pm_runtime_set_active (TYPE_1__*) ;
 int pm_runtime_set_suspended (TYPE_1__*) ;

__attribute__((used)) static int dw_mci_exynos_probe(struct platform_device *pdev)
{
 const struct dw_mci_drv_data *drv_data;
 const struct of_device_id *match;
 int ret;

 match = of_match_node(dw_mci_exynos_match, pdev->dev.of_node);
 drv_data = match->data;

 pm_runtime_get_noresume(&pdev->dev);
 pm_runtime_set_active(&pdev->dev);
 pm_runtime_enable(&pdev->dev);

 ret = dw_mci_pltfm_register(pdev, drv_data);
 if (ret) {
  pm_runtime_disable(&pdev->dev);
  pm_runtime_set_suspended(&pdev->dev);
  pm_runtime_put_noidle(&pdev->dev);

  return ret;
 }

 return 0;
}
