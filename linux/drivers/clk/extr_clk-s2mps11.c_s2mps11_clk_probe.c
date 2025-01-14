
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct sec_pmic_dev {int dummy; } ;
struct TYPE_13__ {TYPE_1__* init; } ;
struct s2mps11_clk {int mask; unsigned int reg; int lookup; int clk_np; TYPE_7__ hw; int clk; struct sec_pmic_dev* iodev; } ;
struct TYPE_12__ {int parent; } ;
struct platform_device {TYPE_4__ dev; } ;
struct clk_hw_onecell_data {int num; TYPE_7__** hws; } ;
typedef enum sec_device_type { ____Placeholder_sec_device_type } sec_device_type ;
struct TYPE_11__ {int driver_data; } ;
struct TYPE_10__ {int name; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;

 int S2MPS11_CLKS_NUM ;
 int S2MPS11_CLK_CP ;
 unsigned int S2MPS11_REG_RTC_CTRL ;

 unsigned int S2MPS13_REG_RTCCTRL ;

 unsigned int S2MPS14_REG_RTCCTRL ;

 unsigned int S5M8767_REG_CTRL1 ;
 int clkdev_drop (int ) ;
 int clkdev_hw_create (TYPE_7__*,int ,int *) ;
 int dev_err (TYPE_4__*,char*,...) ;
 struct sec_pmic_dev* dev_get_drvdata (int ) ;
 int devm_clk_register (TYPE_4__*,TYPE_7__*) ;
 struct s2mps11_clk* devm_kcalloc (TYPE_4__*,int,int,int ) ;
 struct clk_hw_onecell_data* devm_kzalloc (TYPE_4__*,int ,int ) ;
 int hws ;
 int of_clk_add_hw_provider (int ,int ,struct clk_hw_onecell_data*) ;
 int of_clk_hw_onecell_get ;
 TYPE_3__* platform_get_device_id (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,struct s2mps11_clk*) ;
 int s2mps11_clk_parse_dt (struct platform_device*,TYPE_1__*) ;
 TYPE_1__* s2mps11_clks_init ;
 int struct_size (struct clk_hw_onecell_data*,int ,int) ;

__attribute__((used)) static int s2mps11_clk_probe(struct platform_device *pdev)
{
 struct sec_pmic_dev *iodev = dev_get_drvdata(pdev->dev.parent);
 struct s2mps11_clk *s2mps11_clks;
 struct clk_hw_onecell_data *clk_data;
 unsigned int s2mps11_reg;
 int i, ret = 0;
 enum sec_device_type hwid = platform_get_device_id(pdev)->driver_data;

 s2mps11_clks = devm_kcalloc(&pdev->dev, S2MPS11_CLKS_NUM,
    sizeof(*s2mps11_clks), GFP_KERNEL);
 if (!s2mps11_clks)
  return -ENOMEM;

 clk_data = devm_kzalloc(&pdev->dev,
    struct_size(clk_data, hws, S2MPS11_CLKS_NUM),
    GFP_KERNEL);
 if (!clk_data)
  return -ENOMEM;

 switch (hwid) {
 case 131:
  s2mps11_reg = S2MPS11_REG_RTC_CTRL;
  break;
 case 130:
  s2mps11_reg = S2MPS13_REG_RTCCTRL;
  break;
 case 129:
  s2mps11_reg = S2MPS14_REG_RTCCTRL;
  break;
 case 128:
  s2mps11_reg = S5M8767_REG_CTRL1;
  break;
 default:
  dev_err(&pdev->dev, "Invalid device type\n");
  return -EINVAL;
 }


 s2mps11_clks->clk_np = s2mps11_clk_parse_dt(pdev, s2mps11_clks_init);
 if (IS_ERR(s2mps11_clks->clk_np))
  return PTR_ERR(s2mps11_clks->clk_np);

 for (i = 0; i < S2MPS11_CLKS_NUM; i++) {
  if (i == S2MPS11_CLK_CP && hwid == 129)
   continue;
  s2mps11_clks[i].iodev = iodev;
  s2mps11_clks[i].hw.init = &s2mps11_clks_init[i];
  s2mps11_clks[i].mask = 1 << i;
  s2mps11_clks[i].reg = s2mps11_reg;

  s2mps11_clks[i].clk = devm_clk_register(&pdev->dev,
       &s2mps11_clks[i].hw);
  if (IS_ERR(s2mps11_clks[i].clk)) {
   dev_err(&pdev->dev, "Fail to register : %s\n",
      s2mps11_clks_init[i].name);
   ret = PTR_ERR(s2mps11_clks[i].clk);
   goto err_reg;
  }

  s2mps11_clks[i].lookup = clkdev_hw_create(&s2mps11_clks[i].hw,
     s2mps11_clks_init[i].name, ((void*)0));
  if (!s2mps11_clks[i].lookup) {
   ret = -ENOMEM;
   goto err_reg;
  }
  clk_data->hws[i] = &s2mps11_clks[i].hw;
 }

 clk_data->num = S2MPS11_CLKS_NUM;
 of_clk_add_hw_provider(s2mps11_clks->clk_np, of_clk_hw_onecell_get,
          clk_data);

 platform_set_drvdata(pdev, s2mps11_clks);

 return ret;

err_reg:
 while (--i >= 0)
  clkdev_drop(s2mps11_clks[i].lookup);

 return ret;
}
