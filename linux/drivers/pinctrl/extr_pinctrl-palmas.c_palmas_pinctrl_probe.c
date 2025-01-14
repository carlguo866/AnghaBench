
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int parent; scalar_t__ of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct palmas_pinctrl_data {int num_pin_groups; int pin_groups; } ;
struct palmas_pctrl_chip_info {int pctl; int num_pin_groups; int pin_groups; void* num_functions; void* functions; void* num_pins; void* pins; int palmas; TYPE_2__* dev; } ;
struct TYPE_8__ {void* npins; void* pins; int name; } ;


 void* ARRAY_SIZE (void*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_2__*,char*,...) ;
 int dev_get_drvdata (int ) ;
 int dev_name (TYPE_2__*) ;
 struct palmas_pctrl_chip_info* devm_kzalloc (TYPE_2__*,int,int ) ;
 int devm_pinctrl_register (TYPE_2__*,TYPE_1__*,struct palmas_pctrl_chip_info*) ;
 struct palmas_pinctrl_data* of_device_get_match_data (TYPE_2__*) ;
 int of_property_read_bool (scalar_t__,char*) ;
 void* palmas_pin_function ;
 TYPE_1__ palmas_pinctrl_desc ;
 int palmas_pinctrl_get_pin_mux (struct palmas_pctrl_chip_info*) ;
 int palmas_pinctrl_set_dvfs1 (struct palmas_pctrl_chip_info*,int) ;
 int palmas_pinctrl_set_dvfs2 (struct palmas_pctrl_chip_info*,int) ;
 void* palmas_pins_desc ;
 int platform_set_drvdata (struct platform_device*,struct palmas_pctrl_chip_info*) ;
 struct palmas_pinctrl_data tps65913_pinctrl_data ;

__attribute__((used)) static int palmas_pinctrl_probe(struct platform_device *pdev)
{
 struct palmas_pctrl_chip_info *pci;
 const struct palmas_pinctrl_data *pinctrl_data = &tps65913_pinctrl_data;
 int ret;
 bool enable_dvfs1 = 0;
 bool enable_dvfs2 = 0;

 if (pdev->dev.of_node) {
  pinctrl_data = of_device_get_match_data(&pdev->dev);
  enable_dvfs1 = of_property_read_bool(pdev->dev.of_node,
     "ti,palmas-enable-dvfs1");
  enable_dvfs2 = of_property_read_bool(pdev->dev.of_node,
     "ti,palmas-enable-dvfs2");
 }

 pci = devm_kzalloc(&pdev->dev, sizeof(*pci), GFP_KERNEL);
 if (!pci)
  return -ENOMEM;

 pci->dev = &pdev->dev;
 pci->palmas = dev_get_drvdata(pdev->dev.parent);

 pci->pins = palmas_pins_desc;
 pci->num_pins = ARRAY_SIZE(palmas_pins_desc);
 pci->functions = palmas_pin_function;
 pci->num_functions = ARRAY_SIZE(palmas_pin_function);
 pci->pin_groups = pinctrl_data->pin_groups;
 pci->num_pin_groups = pinctrl_data->num_pin_groups;

 platform_set_drvdata(pdev, pci);

 palmas_pinctrl_set_dvfs1(pci, enable_dvfs1);
 palmas_pinctrl_set_dvfs2(pci, enable_dvfs2);
 ret = palmas_pinctrl_get_pin_mux(pci);
 if (ret < 0) {
  dev_err(&pdev->dev,
   "Reading pinctrol option register failed: %d\n", ret);
  return ret;
 }

 palmas_pinctrl_desc.name = dev_name(&pdev->dev);
 palmas_pinctrl_desc.pins = palmas_pins_desc;
 palmas_pinctrl_desc.npins = ARRAY_SIZE(palmas_pins_desc);
 pci->pctl = devm_pinctrl_register(&pdev->dev, &palmas_pinctrl_desc,
       pci);
 if (IS_ERR(pci->pctl)) {
  dev_err(&pdev->dev, "Couldn't register pinctrl driver\n");
  return PTR_ERR(pci->pctl);
 }
 return 0;
}
