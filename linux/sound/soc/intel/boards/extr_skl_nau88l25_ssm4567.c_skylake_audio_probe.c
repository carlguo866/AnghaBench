
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int dmic_num; } ;
struct snd_soc_acpi_mach {TYPE_1__ mach_params; } ;
struct skl_nau88125_private {int hdmi_pcm_list; } ;
struct TYPE_9__ {struct snd_soc_acpi_mach* platform_data; } ;
struct platform_device {TYPE_4__ dev; } ;
struct TYPE_8__ {TYPE_4__* dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int constraints_dmic_2ch ;
 int constraints_dmic_channels ;
 struct skl_nau88125_private* devm_kzalloc (TYPE_4__*,int,int ) ;
 int devm_snd_soc_register_card (TYPE_4__*,TYPE_2__*) ;
 int * dmic_constraints ;
 TYPE_2__ skylake_audio_card ;
 int snd_soc_card_set_drvdata (TYPE_2__*,struct skl_nau88125_private*) ;

__attribute__((used)) static int skylake_audio_probe(struct platform_device *pdev)
{
 struct skl_nau88125_private *ctx;
 struct snd_soc_acpi_mach *mach;

 ctx = devm_kzalloc(&pdev->dev, sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 INIT_LIST_HEAD(&ctx->hdmi_pcm_list);

 skylake_audio_card.dev = &pdev->dev;
 snd_soc_card_set_drvdata(&skylake_audio_card, ctx);

 mach = (&pdev->dev)->platform_data;
 if (mach)
  dmic_constraints = mach->mach_params.dmic_num == 2 ?
   &constraints_dmic_2ch : &constraints_dmic_channels;

 return devm_snd_soc_register_card(&pdev->dev, &skylake_audio_card);
}
