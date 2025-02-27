
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mtk_vcodec_clk {int clk_num; struct mtk_vcodec_clk_info* clk_info; } ;
struct mtk_vcodec_pm {TYPE_1__* dev; TYPE_1__* larbvdec; struct mtk_vcodec_clk vdec_clk; struct mtk_vcodec_dev* mtkdev; } ;
struct mtk_vcodec_dev {struct platform_device* plat_dev; struct mtk_vcodec_pm pm; } ;
struct mtk_vcodec_clk_info {int vcodec_clk; int clk_name; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 scalar_t__ WARN_ON (int) ;
 int devm_clk_get (TYPE_1__*,int ) ;
 struct mtk_vcodec_clk_info* devm_kcalloc (TYPE_1__*,int,int,int ) ;
 int mtk_v4l2_err (char*,...) ;
 struct platform_device* of_find_device_by_node (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (int ,char*,int ) ;
 int of_property_count_strings (int ,char*) ;
 int of_property_read_string_index (int ,char*,int,int *) ;
 int pm_runtime_enable (TYPE_1__*) ;

int mtk_vcodec_init_dec_pm(struct mtk_vcodec_dev *mtkdev)
{
 struct device_node *node;
 struct platform_device *pdev;
 struct mtk_vcodec_pm *pm;
 struct mtk_vcodec_clk *dec_clk;
 struct mtk_vcodec_clk_info *clk_info;
 int i = 0, ret = 0;

 pdev = mtkdev->plat_dev;
 pm = &mtkdev->pm;
 pm->mtkdev = mtkdev;
 dec_clk = &pm->vdec_clk;
 node = of_parse_phandle(pdev->dev.of_node, "mediatek,larb", 0);
 if (!node) {
  mtk_v4l2_err("of_parse_phandle mediatek,larb fail!");
  return -1;
 }

 pdev = of_find_device_by_node(node);
 of_node_put(node);
 if (WARN_ON(!pdev)) {
  return -1;
 }
 pm->larbvdec = &pdev->dev;
 pdev = mtkdev->plat_dev;
 pm->dev = &pdev->dev;

 dec_clk->clk_num =
  of_property_count_strings(pdev->dev.of_node, "clock-names");
 if (dec_clk->clk_num > 0) {
  dec_clk->clk_info = devm_kcalloc(&pdev->dev,
   dec_clk->clk_num, sizeof(*clk_info),
   GFP_KERNEL);
  if (!dec_clk->clk_info)
   return -ENOMEM;
 } else {
  mtk_v4l2_err("Failed to get vdec clock count");
  return -EINVAL;
 }

 for (i = 0; i < dec_clk->clk_num; i++) {
  clk_info = &dec_clk->clk_info[i];
  ret = of_property_read_string_index(pdev->dev.of_node,
   "clock-names", i, &clk_info->clk_name);
  if (ret) {
   mtk_v4l2_err("Failed to get clock name id = %d", i);
   return ret;
  }
  clk_info->vcodec_clk = devm_clk_get(&pdev->dev,
   clk_info->clk_name);
  if (IS_ERR(clk_info->vcodec_clk)) {
   mtk_v4l2_err("devm_clk_get (%d)%s fail", i,
    clk_info->clk_name);
   return PTR_ERR(clk_info->vcodec_clk);
  }
 }

 pm_runtime_enable(&pdev->dev);

 return ret;
}
