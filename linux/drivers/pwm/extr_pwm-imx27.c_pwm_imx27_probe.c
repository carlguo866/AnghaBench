
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int base; int npwm; int of_pwm_n_cells; int of_xlate; int * dev; int * ops; } ;
struct pwm_imx27_chip {TYPE_1__ chip; void* mmio_base; void* clk_per; void* clk_ipg; } ;
struct platform_device {int dev; } ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int dev_err (int *,char*,int) ;
 void* devm_clk_get (int *,char*) ;
 struct pwm_imx27_chip* devm_kzalloc (int *,int,int ) ;
 void* devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int of_pwm_xlate_with_flags ;
 int platform_set_drvdata (struct platform_device*,struct pwm_imx27_chip*) ;
 int pwm_imx27_ops ;
 int pwmchip_add (TYPE_1__*) ;

__attribute__((used)) static int pwm_imx27_probe(struct platform_device *pdev)
{
 struct pwm_imx27_chip *imx;

 imx = devm_kzalloc(&pdev->dev, sizeof(*imx), GFP_KERNEL);
 if (imx == ((void*)0))
  return -ENOMEM;

 platform_set_drvdata(pdev, imx);

 imx->clk_ipg = devm_clk_get(&pdev->dev, "ipg");
 if (IS_ERR(imx->clk_ipg)) {
  dev_err(&pdev->dev, "getting ipg clock failed with %ld\n",
    PTR_ERR(imx->clk_ipg));
  return PTR_ERR(imx->clk_ipg);
 }

 imx->clk_per = devm_clk_get(&pdev->dev, "per");
 if (IS_ERR(imx->clk_per)) {
  int ret = PTR_ERR(imx->clk_per);

  if (ret != -EPROBE_DEFER)
   dev_err(&pdev->dev,
    "failed to get peripheral clock: %d\n",
    ret);

  return ret;
 }

 imx->chip.ops = &pwm_imx27_ops;
 imx->chip.dev = &pdev->dev;
 imx->chip.base = -1;
 imx->chip.npwm = 1;

 imx->chip.of_xlate = of_pwm_xlate_with_flags;
 imx->chip.of_pwm_n_cells = 3;

 imx->mmio_base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(imx->mmio_base))
  return PTR_ERR(imx->mmio_base);

 return pwmchip_add(&imx->chip);
}
