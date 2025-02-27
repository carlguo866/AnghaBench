
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {int * dev; } ;
struct platform_device {int dev; } ;


 int dev_err (int *,char*,int) ;
 int devm_snd_soc_register_card (int *,struct snd_soc_card*) ;
 struct snd_soc_card tobermory ;

__attribute__((used)) static int tobermory_probe(struct platform_device *pdev)
{
 struct snd_soc_card *card = &tobermory;
 int ret;

 card->dev = &pdev->dev;

 ret = devm_snd_soc_register_card(&pdev->dev, card);
 if (ret)
  dev_err(&pdev->dev, "snd_soc_register_card() failed: %d\n",
   ret);

 return ret;
}
