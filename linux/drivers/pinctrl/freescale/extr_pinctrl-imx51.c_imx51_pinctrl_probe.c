
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int imx51_pinctrl_info ;
 int imx_pinctrl_probe (struct platform_device*,int *) ;

__attribute__((used)) static int imx51_pinctrl_probe(struct platform_device *pdev)
{
 return imx_pinctrl_probe(pdev, &imx51_pinctrl_info);
}
