
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {int num_dapm_widgets; int dapm_widgets; struct device* dev; } ;
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct apq8016_sbc_data {struct apq8016_sbc_data* spkr_iomux; struct apq8016_sbc_data* mic_iomux; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct apq8016_sbc_data*) ;
 int PTR_ERR (struct apq8016_sbc_data*) ;
 int apq8016_sbc_dapm_widgets ;
 struct apq8016_sbc_data* apq8016_sbc_parse_of (struct snd_soc_card*) ;
 int dev_err (struct device*,char*,int) ;
 void* devm_ioremap_resource (struct device*,struct resource*) ;
 struct snd_soc_card* devm_kzalloc (struct device*,int,int ) ;
 int devm_snd_soc_register_card (struct device*,struct snd_soc_card*) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int snd_soc_card_set_drvdata (struct snd_soc_card*,struct apq8016_sbc_data*) ;

__attribute__((used)) static int apq8016_sbc_platform_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct snd_soc_card *card;
 struct apq8016_sbc_data *data;
 struct resource *res;

 card = devm_kzalloc(dev, sizeof(*card), GFP_KERNEL);
 if (!card)
  return -ENOMEM;

 card->dev = dev;
 card->dapm_widgets = apq8016_sbc_dapm_widgets;
 card->num_dapm_widgets = ARRAY_SIZE(apq8016_sbc_dapm_widgets);
 data = apq8016_sbc_parse_of(card);
 if (IS_ERR(data)) {
  dev_err(&pdev->dev, "Error resolving dai links: %ld\n",
   PTR_ERR(data));
  return PTR_ERR(data);
 }

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "mic-iomux");
 data->mic_iomux = devm_ioremap_resource(dev, res);
 if (IS_ERR(data->mic_iomux))
  return PTR_ERR(data->mic_iomux);

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "spkr-iomux");
 data->spkr_iomux = devm_ioremap_resource(dev, res);
 if (IS_ERR(data->spkr_iomux))
  return PTR_ERR(data->spkr_iomux);

 snd_soc_card_set_drvdata(card, data);

 return devm_snd_soc_register_card(&pdev->dev, card);
}
