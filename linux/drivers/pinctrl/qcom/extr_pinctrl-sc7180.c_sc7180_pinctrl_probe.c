
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int msm_pinctrl_probe (struct platform_device*,int *) ;
 int sc7180_pinctrl ;

__attribute__((used)) static int sc7180_pinctrl_probe(struct platform_device *pdev)
{
 return msm_pinctrl_probe(pdev, &sc7180_pinctrl);
}
