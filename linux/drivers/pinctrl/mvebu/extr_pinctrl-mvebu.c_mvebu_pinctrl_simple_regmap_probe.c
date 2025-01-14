
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct regmap {int dummy; } ;
struct platform_device {int dev; } ;
struct mvebu_pinctrl_soc_info {int ncontrols; struct mvebu_mpp_ctrl_data* control_data; } ;
struct TYPE_2__ {int offset; struct regmap* map; } ;
struct mvebu_mpp_ctrl_data {TYPE_1__ regmap; } ;
struct device {int of_node; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 struct mvebu_pinctrl_soc_info* dev_get_platdata (int *) ;
 struct mvebu_mpp_ctrl_data* devm_kcalloc (int *,int,int,int ) ;
 int mvebu_pinctrl_probe (struct platform_device*) ;
 struct regmap* syscon_node_to_regmap (int ) ;

int mvebu_pinctrl_simple_regmap_probe(struct platform_device *pdev,
          struct device *syscon_dev, u32 offset)
{
 struct mvebu_pinctrl_soc_info *soc = dev_get_platdata(&pdev->dev);
 struct mvebu_mpp_ctrl_data *mpp_data;
 struct regmap *regmap;
 int i;

 regmap = syscon_node_to_regmap(syscon_dev->of_node);
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);

 mpp_data = devm_kcalloc(&pdev->dev, soc->ncontrols, sizeof(*mpp_data),
    GFP_KERNEL);
 if (!mpp_data)
  return -ENOMEM;

 for (i = 0; i < soc->ncontrols; i++) {
  mpp_data[i].regmap.map = regmap;
  mpp_data[i].regmap.offset = offset;
 }

 soc->control_data = mpp_data;

 return mvebu_pinctrl_probe(pdev);
}
