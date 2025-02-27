
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int dummy; } ;
struct reset_control {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct lpc18xx_eeprom_dev {int val_bytes; int reg_bytes; struct reset_control* clk; struct reset_control* nvmem; void* size; struct reset_control* mem_base; struct reset_control* reg_base; } ;
struct TYPE_3__ {struct lpc18xx_eeprom_dev* priv; struct device* dev; void* size; } ;


 int DIV_ROUND_UP (unsigned long,int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct reset_control*) ;
 int LPC18XX_EEPROM_AUTOPROG ;
 unsigned long LPC18XX_EEPROM_AUTOPROG_WORD ;
 int LPC18XX_EEPROM_CLKDIV ;
 int LPC18XX_EEPROM_CLOCK_HZ ;
 int LPC18XX_EEPROM_PWRDWN ;
 unsigned long LPC18XX_EEPROM_PWRDWN_YES ;
 int PTR_ERR (struct reset_control*) ;
 int clk_disable_unprepare (struct reset_control*) ;
 unsigned long clk_get_rate (struct reset_control*) ;
 int clk_prepare_enable (struct reset_control*) ;
 int dev_err (struct device*,char*,...) ;
 struct reset_control* devm_clk_get (struct device*,char*) ;
 void* devm_ioremap_resource (struct device*,struct resource*) ;
 struct lpc18xx_eeprom_dev* devm_kzalloc (struct device*,int,int ) ;
 struct reset_control* devm_nvmem_register (struct device*,TYPE_1__*) ;
 struct reset_control* devm_reset_control_get_exclusive (struct device*,int *) ;
 int lpc18xx_eeprom_writel (struct lpc18xx_eeprom_dev*,int ,unsigned long) ;
 TYPE_1__ lpc18xx_nvmem_config ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int platform_set_drvdata (struct platform_device*,struct lpc18xx_eeprom_dev*) ;
 int reset_control_assert (struct reset_control*) ;
 void* resource_size (struct resource*) ;

__attribute__((used)) static int lpc18xx_eeprom_probe(struct platform_device *pdev)
{
 struct lpc18xx_eeprom_dev *eeprom;
 struct device *dev = &pdev->dev;
 struct reset_control *rst;
 unsigned long clk_rate;
 struct resource *res;
 int ret;

 eeprom = devm_kzalloc(dev, sizeof(*eeprom), GFP_KERNEL);
 if (!eeprom)
  return -ENOMEM;

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "reg");
 eeprom->reg_base = devm_ioremap_resource(dev, res);
 if (IS_ERR(eeprom->reg_base))
  return PTR_ERR(eeprom->reg_base);

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "mem");
 eeprom->mem_base = devm_ioremap_resource(dev, res);
 if (IS_ERR(eeprom->mem_base))
  return PTR_ERR(eeprom->mem_base);

 eeprom->clk = devm_clk_get(&pdev->dev, "eeprom");
 if (IS_ERR(eeprom->clk)) {
  dev_err(&pdev->dev, "failed to get eeprom clock\n");
  return PTR_ERR(eeprom->clk);
 }

 ret = clk_prepare_enable(eeprom->clk);
 if (ret < 0) {
  dev_err(dev, "failed to prepare/enable eeprom clk: %d\n", ret);
  return ret;
 }

 rst = devm_reset_control_get_exclusive(dev, ((void*)0));
 if (IS_ERR(rst)) {
  dev_err(dev, "failed to get reset: %ld\n", PTR_ERR(rst));
  ret = PTR_ERR(rst);
  goto err_clk;
 }

 ret = reset_control_assert(rst);
 if (ret < 0) {
  dev_err(dev, "failed to assert reset: %d\n", ret);
  goto err_clk;
 }

 eeprom->val_bytes = 4;
 eeprom->reg_bytes = 4;





 clk_rate = clk_get_rate(eeprom->clk);
 clk_rate = DIV_ROUND_UP(clk_rate, LPC18XX_EEPROM_CLOCK_HZ) - 1;
 lpc18xx_eeprom_writel(eeprom, LPC18XX_EEPROM_CLKDIV, clk_rate);





 lpc18xx_eeprom_writel(eeprom, LPC18XX_EEPROM_AUTOPROG,
         LPC18XX_EEPROM_AUTOPROG_WORD);

 lpc18xx_eeprom_writel(eeprom, LPC18XX_EEPROM_PWRDWN,
         LPC18XX_EEPROM_PWRDWN_YES);

 eeprom->size = resource_size(res);
 lpc18xx_nvmem_config.size = resource_size(res);
 lpc18xx_nvmem_config.dev = dev;
 lpc18xx_nvmem_config.priv = eeprom;

 eeprom->nvmem = devm_nvmem_register(dev, &lpc18xx_nvmem_config);
 if (IS_ERR(eeprom->nvmem)) {
  ret = PTR_ERR(eeprom->nvmem);
  goto err_clk;
 }

 platform_set_drvdata(pdev, eeprom);

 return 0;

err_clk:
 clk_disable_unprepare(eeprom->clk);

 return ret;
}
