
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct clk {int dummy; } ;
struct at91_ramc_caps {scalar_t__ has_mpddr_clk; scalar_t__ has_ddrck; } ;


 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int clk_prepare_enable (struct clk*) ;
 struct clk* devm_clk_get (int *,char*) ;
 struct at91_ramc_caps* of_device_get_match_data (int *) ;
 int pr_err (char*) ;

__attribute__((used)) static int atmel_ramc_probe(struct platform_device *pdev)
{
 const struct at91_ramc_caps *caps;
 struct clk *clk;

 caps = of_device_get_match_data(&pdev->dev);

 if (caps->has_ddrck) {
  clk = devm_clk_get(&pdev->dev, "ddrck");
  if (IS_ERR(clk))
   return PTR_ERR(clk);
  clk_prepare_enable(clk);
 }

 if (caps->has_mpddr_clk) {
  clk = devm_clk_get(&pdev->dev, "mpddr");
  if (IS_ERR(clk)) {
   pr_err("AT91 RAMC: couldn't get mpddr clock\n");
   return PTR_ERR(clk);
  }
  clk_prepare_enable(clk);
 }

 return 0;
}
