
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int devm_snd_soc_register_component (int *,int *,int *,int ) ;
 int dw_pcm_component ;

int dw_pcm_register(struct platform_device *pdev)
{
 return devm_snd_soc_register_component(&pdev->dev, &dw_pcm_component,
            ((void*)0), 0);
}
