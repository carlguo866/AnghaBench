
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mchp_i2s_mcc_dev {int pclk; } ;


 int clk_disable_unprepare (int ) ;
 struct mchp_i2s_mcc_dev* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mchp_i2s_mcc_remove(struct platform_device *pdev)
{
 struct mchp_i2s_mcc_dev *dev = platform_get_drvdata(pdev);

 clk_disable_unprepare(dev->pclk);

 return 0;
}
