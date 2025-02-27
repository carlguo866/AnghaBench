
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int M98088_DAI_MUTE ;
 int M98088_DAI_MUTE_MASK ;
 int M98088_REG_2F_LVL_DAI1_PLAY ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;

__attribute__((used)) static int max98088_dai1_digital_mute(struct snd_soc_dai *codec_dai, int mute)
{
       struct snd_soc_component *component = codec_dai->component;
       int reg;

       if (mute)
               reg = M98088_DAI_MUTE;
       else
               reg = 0;

       snd_soc_component_update_bits(component, M98088_REG_2F_LVL_DAI1_PLAY,
                           M98088_DAI_MUTE_MASK, reg);
       return 0;
}
