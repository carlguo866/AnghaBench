
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int component; } ;


 int ES8316_DAC_SET1 ;
 int snd_soc_component_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int es8316_mute(struct snd_soc_dai *dai, int mute)
{
 snd_soc_component_update_bits(dai->component, ES8316_DAC_SET1, 0x20,
       mute ? 0x20 : 0);
 return 0;
}
