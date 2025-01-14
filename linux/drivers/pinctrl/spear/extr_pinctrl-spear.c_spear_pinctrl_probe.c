
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct spear_pmx {int pctl; struct spear_pinctrl_machdata* machdata; TYPE_2__* dev; int vbase; } ;
struct spear_pinctrl_machdata {int npins; int pins; scalar_t__ modes_supported; } ;
struct resource {int dummy; } ;
struct TYPE_8__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_7__ {int npins; int pins; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_2__*,char*,...) ;
 int devm_ioremap_resource (TYPE_2__*,struct resource*) ;
 struct spear_pmx* devm_kzalloc (TYPE_2__*,int,int ) ;
 int devm_pinctrl_register (TYPE_2__*,TYPE_1__*,struct spear_pmx*) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct spear_pmx*) ;
 scalar_t__ set_mode (struct spear_pmx*,int) ;
 TYPE_1__ spear_pinctrl_desc ;

int spear_pinctrl_probe(struct platform_device *pdev,
   struct spear_pinctrl_machdata *machdata)
{
 struct device_node *np = pdev->dev.of_node;
 struct resource *res;
 struct spear_pmx *pmx;

 if (!machdata)
  return -ENODEV;

 pmx = devm_kzalloc(&pdev->dev, sizeof(*pmx), GFP_KERNEL);
 if (!pmx)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 pmx->vbase = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(pmx->vbase))
  return PTR_ERR(pmx->vbase);

 pmx->dev = &pdev->dev;
 pmx->machdata = machdata;


 if (machdata->modes_supported) {
  int mode = 0;

  if (of_property_read_u32(np, "st,pinmux-mode", &mode)) {
   dev_err(&pdev->dev, "OF: pinmux mode not passed\n");
   return -EINVAL;
  }

  if (set_mode(pmx, mode)) {
   dev_err(&pdev->dev, "OF: Couldn't configure mode: %x\n",
     mode);
   return -EINVAL;
  }
 }

 platform_set_drvdata(pdev, pmx);

 spear_pinctrl_desc.pins = machdata->pins;
 spear_pinctrl_desc.npins = machdata->npins;

 pmx->pctl = devm_pinctrl_register(&pdev->dev, &spear_pinctrl_desc, pmx);
 if (IS_ERR(pmx->pctl)) {
  dev_err(&pdev->dev, "Couldn't register pinctrl driver\n");
  return PTR_ERR(pmx->pctl);
 }

 return 0;
}
