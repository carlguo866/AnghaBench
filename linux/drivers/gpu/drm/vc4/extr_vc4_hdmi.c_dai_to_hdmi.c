
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_hdmi {int dummy; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_soc_card {int dummy; } ;


 struct vc4_hdmi* snd_soc_card_get_drvdata (struct snd_soc_card*) ;
 struct snd_soc_card* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static inline struct vc4_hdmi *dai_to_hdmi(struct snd_soc_dai *dai)
{
 struct snd_soc_card *card = snd_soc_dai_get_drvdata(dai);

 return snd_soc_card_get_drvdata(card);
}
