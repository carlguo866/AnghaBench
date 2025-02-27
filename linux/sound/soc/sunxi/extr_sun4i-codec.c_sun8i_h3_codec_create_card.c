
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_card {char* name; int num_aux_devs; int fully_routed; TYPE_2__* aux_dev; void* num_dapm_routes; void* dapm_routes; void* num_dapm_widgets; void* dapm_widgets; struct device* dev; int dai_link; int num_links; } ;
struct device {int of_node; } ;
struct TYPE_3__ {int of_node; } ;
struct TYPE_4__ {TYPE_1__ dlc; } ;


 void* ARRAY_SIZE (void*) ;
 int EINVAL ;
 int ENOMEM ;
 struct snd_soc_card* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 TYPE_2__ aux_dev ;
 int dev_err (struct device*,char*) ;
 int dev_warn (struct device*,char*,int) ;
 struct snd_soc_card* devm_kzalloc (struct device*,int,int ) ;
 int of_parse_phandle (int ,char*,int ) ;
 int snd_soc_of_parse_audio_routing (struct snd_soc_card*,char*) ;
 int sun4i_codec_create_link (struct device*,int *) ;
 void* sun6i_codec_card_dapm_widgets ;
 void* sun8i_codec_card_routes ;

__attribute__((used)) static struct snd_soc_card *sun8i_h3_codec_create_card(struct device *dev)
{
 struct snd_soc_card *card;
 int ret;

 card = devm_kzalloc(dev, sizeof(*card), GFP_KERNEL);
 if (!card)
  return ERR_PTR(-ENOMEM);

 aux_dev.dlc.of_node = of_parse_phandle(dev->of_node,
       "allwinner,codec-analog-controls",
       0);
 if (!aux_dev.dlc.of_node) {
  dev_err(dev, "Can't find analog controls for codec.\n");
  return ERR_PTR(-EINVAL);
 };

 card->dai_link = sun4i_codec_create_link(dev, &card->num_links);
 if (!card->dai_link)
  return ERR_PTR(-ENOMEM);

 card->dev = dev;
 card->name = "H3 Audio Codec";
 card->dapm_widgets = sun6i_codec_card_dapm_widgets;
 card->num_dapm_widgets = ARRAY_SIZE(sun6i_codec_card_dapm_widgets);
 card->dapm_routes = sun8i_codec_card_routes;
 card->num_dapm_routes = ARRAY_SIZE(sun8i_codec_card_routes);
 card->aux_dev = &aux_dev;
 card->num_aux_devs = 1;
 card->fully_routed = 1;

 ret = snd_soc_of_parse_audio_routing(card, "allwinner,audio-routing");
 if (ret)
  dev_warn(dev, "failed to parse audio-routing: %d\n", ret);

 return card;
}
