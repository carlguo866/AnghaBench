
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int AC97_CENTER_LFE_MASTER ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int wm9713_set_dai_tristate(struct snd_soc_dai *codec_dai,
 int tristate)
{
 struct snd_soc_component *component = codec_dai->component;

 if (tristate)
  snd_soc_component_update_bits(component, AC97_CENTER_LFE_MASTER,
        0x6000, 0x0000);

 return 0;
}
